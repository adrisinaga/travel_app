import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tourism_app/data.dart';
import 'package:transparent_image/transparent_image.dart';

class OnBoardPage extends StatelessWidget {
  final CarouselController imageCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
              left: size.width * .05,
              right: size.width * .05,
              top: size.height * .018),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Travela',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.06),
              Text(
                'Travel \nOver the World',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.5),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                height: size.height * .45,
                child: CarouselSlider.builder(
                  carouselController: imageCarouselController,
                  itemCount: incomingEvent.length,
                  options: CarouselOptions(
                    height: size.height * .5,
                    viewportFraction: 0.7,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollPhysics: BouncingScrollPhysics(),
                    onPageChanged: (index, carousel) {
                      // carouselSliderController.setCurrentId(
                      //     carouselSliderController
                      //         .contentList[index].orderId);
                      // carouselSliderController.setCurrentIndex(index);
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                  itemBuilder: (context, int, i) {
                    return FadeInImage.memoryNetwork(
                      width: size.width,
                      placeholder: kTransparentImage,
                      image: imageList[int],
                      fit: BoxFit.cover,
                    );
                  },
                ),
                // child: StaggeredGridView.countBuilder(
                //   scrollDirection: Axis.horizontal,
                //   crossAxisCount: 1,
                //   mainAxisSpacing: 4.0,
                //   crossAxisSpacing: 4.0,
                //   itemCount: imageList.length,
                //   itemBuilder: (BuildContext context, int index) =>
                //       FadeInImage.memoryNetwork(
                //     height: size.height * .002,
                //     placeholder: kTransparentImage,
                //     image: imageList[index],
                //     fit: BoxFit.cover,
                //   ),
                //   staggeredTileBuilder: (int index) =>
                //       new StaggeredTile.count(1, index.isEven ? 1.2 : 1.8),
                // ),
              ),
              SizedBox(height: size.height * 0.02),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     ClipRRect(
              //       borderRadius: BorderRadius.circular(4),
              //       child: Container(
              //         height: size.height * .01,
              //         width: size.width * 0.07,
              //         color: Color(0xff00ADB5),
              //       ),
              //     ),
              //     SizedBox(width: size.width * 0.015),
              //     CircleAvatar(
              //       backgroundColor: Colors.grey,
              //       radius: size.width * .01,
              //     ),
              //     SizedBox(width: size.width * 0.015),
              //     CircleAvatar(
              //       backgroundColor: Colors.grey,
              //       radius: size.width * .01,
              //     )
              //   ],
              // ),
              SizedBox(height: size.height * 0.02),
              Center(
                  child: Padding(
                padding: EdgeInsets.only(
                    left: size.height * .04, right: size.height * .04),
                child: Text(
                  'Great experience tour from our recommendation places',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500]),
                ),
              )),
              SizedBox(height: size.height * 0.06),
              Container(
                width: size.width,
                height: size.height * 0.05,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Colors.grey[800],
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Find Places',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
