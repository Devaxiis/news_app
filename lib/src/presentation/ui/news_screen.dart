import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/src/core/apis.dart';
import 'package:news_app/src/core/service_locator.dart';
import 'package:news_app/src/domain/model/news_model/news_model.dart';
import 'package:news_app/src/presentation/ui/detail_screen.dart';
import 'package:url_launcher/url_launcher_string.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  late final List<NewsModel> gazetaNews = [];

  @override
  void initState() {
    super.initState();
    dataGet();
  }

  void dataGet() async {
    final api = Apis();
    gazetaNews.addAll(await repository.fetchAllData(api));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text("Day news", style: GoogleFonts.plusJakartaSans(
            fontSize: 25,
            fontWeight: FontWeight.w600
        ),),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: gazetaNews.length,
            itemBuilder: (context, index) {
              final data = gazetaNews[index];
              Uri d = Uri.parse("${data.url}");
              return Padding(
                padding: const EdgeInsets.only(top: 16,),
                child: Material(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (_) => const DetailScreen()));
                    },
                    child: SizedBox(
                      height: 370,
                      width: MediaQuery
                          .sizeOf(context)
                          .width,
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24),
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 5,
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(12)),
                                        child: SizedBox.expand(
                                          child: CachedNetworkImage(
                                            imageUrl: "${data.urlToImage}",
                                            fadeOutDuration: const Duration(
                                                milliseconds: 500),
                                            fit: BoxFit.cover,
                                            errorWidget: (context, url,
                                                error) =>
                                            const Icon(Icons
                                                .image_not_supported_outlined),
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                      flex: 4,
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          Expanded(
                                            flex: 3,
                                            child: Text(
                                              "${data.title}",
                                              overflow: TextOverflow.clip,
                                              style: GoogleFonts
                                                  .plusJakartaSans(
                                                color: const Color(0xff14181e),
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: data.author == null
                                                      ? const Color(0x66818181)
                                                      : null,
                                                  borderRadius: const BorderRadius
                                                      .all(Radius.circular(25)),
                                                  border: data.author == null
                                                      ? Border.all(
                                                      width: 1,
                                                      color: const Color(
                                                          0x6614181e)
                                                  )
                                                      : Border.all(
                                                      width: 1.5,
                                                      color: const Color(
                                                          0x66818181)
                                                  )
                                              ),
                                              child: TextButton(
                                                onPressed: () {
                                                  launchUrlString("$d");
                                                  setState(() {});
                                                },
                                                child: Text(
                                                  data.author ?? "link",
                                                  overflow: TextOverflow
                                                      .ellipsis,
                                                  style: GoogleFonts
                                                      .plusJakartaSans(
                                                    color: data.author == null
                                                        ? const Color(
                                                        0xffffffff)
                                                        : const Color(
                                                        0x9914181e),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ),
                          const Divider(
                            thickness: 1.6,
                            color: Color(0x66818181),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
