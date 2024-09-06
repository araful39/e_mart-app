
import 'package:flutter/material.dart';
import 'package:morder_ecommerce_app/utills/constants/colors.dart';
import 'package:morder_ecommerce_app/utills/constants/sizes.dart';
import 'package:morder_ecommerce_app/view/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:morder_ecommerce_app/view/common/widgets/images/circular_image_with_clipOval.dart';
import 'package:morder_ecommerce_app/view/common/widgets/products/rating/rating_bar_indicator.dart';
import 'package:morder_ecommerce_app/view/common/widgets/texts/section_heading.dart';
import 'package:readmore/readmore.dart';


class CustomUserReviewCard extends StatelessWidget {
  const CustomUserReviewCard({
    super.key, required this.imagePath, required this.isNetworkImage, required this.name,
  });
  final String name;
  final String imagePath;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   CustomCircularImageWithClipOval(
                      isNetworkImage: isNetworkImage,
                      height: 50,
                      width: 50,
                      imagePath:imagePath),
                  const SizedBox(
                    width: KSizes.sm,
                  ),
                  Text(
                    name,
                    style: Theme.of(context).textTheme.titleLarge,
                  )
                ],
              ),
              IconButton(onPressed: () {

              }, icon: const Icon(Icons.more_vert))
            ],
          ),
          const CustomRatingBarIndicator(
            rating: 5.0,
            date: "7-March-2024",
          ),
          const SizedBox(
            height: KSizes.sm,
          ),
           const ReadMoreText("This guide to review excellence will outline 12 examples of how brands successfully upped their review-game, making sure that positive, accurate feedback is the most visible. quickly touch on what great product review management can impact your brands success, then move on to our examples. Click through to the section you find most relevant. ",

             trimLength:100 ,
            colorClickableText: Colors.indigo,
            trimCollapsedText: "Show more",
            moreStyle: TextStyle(color: Colors.indigo),
            trimExpandedText: "Show less",
             lessStyle: TextStyle(color: Colors.indigo),
          )
      ,   const SizedBox(
            height: KSizes.sm,
          ),


       const CustomRoundedContainer(

             backgroundColor: AppColores.grey,
             child:  Padding(
               padding: EdgeInsets.all(8.0),
               child: Column(

                 children: [
                   CustomSectionHeading(name: "T`s Store",subText: "07-March-2024",showActionButton: true,),

                   ReadMoreText(
                     "This guide to review excellence will outline 12 examples of how brands successfully upped their review-game, making sure that positive, accurate feedback is the most visible. quickly touch on what great product review management can impact your brands success, then move on to our examples. Click through to the section you find most relevant. ",
                     trimLength:100 ,
                     colorClickableText: Colors.indigo,
                     trimCollapsedText: "Show more",
                     moreStyle: TextStyle(color: Colors.indigo),
                     trimExpandedText: "Show less",
                     lessStyle: TextStyle(color: Colors.indigo),
                   ),
                 ],
               ),
             ),
           )

        ],
      ),
    );
  }
}
