// class ServiceItemModel {
//   ServiceItemModel({
//     required this.OurTeam,
//
//   });
//
//   final List<AiServicesDatum> OurTeam;
//
//
//   factory ServiceItemModel.fromJson(Map<String, dynamic> json) {
//     return ServiceItemModel(
//     OurTeam: json["Our Team"] == null
//           ? []
//           : List<AiServicesDatum>.from(
//           json["Our Team"]!.map((x) => AiServicesDatum.fromJson(x))),
//
//     );
//   }
//
//   Map<String, dynamic> toJson() => {
//     "Our Team": OurTeam.map((x) => x.toJson()).toList(),
//
//   };
// }
//
// class AiServicesDatum {
//   AiServicesDatum({
//     required this.title,
//     required this.description,
//     required this.backgroundColor,
//     required this.imageAsset,
//   });
//
//   final String? title;
//   final String? description;
//   final String? backgroundColor;
//   final String? imageAsset;
//
//   factory AiServicesDatum.fromJson(Map<String, dynamic> json) {
//     return AiServicesDatum(
//       title: json["title"],
//       description: json["description"],
//       backgroundColor: json["backgroundColor"],
//       imageAsset: json["imageAsset"],
//     );
//   }
//
//   Map<String, dynamic> toJson() => {
//     "title": title,
//     "description": description,
//     "backgroundColor": backgroundColor,
//     "imageAsset": imageAsset,
//   };
// }
//
//
