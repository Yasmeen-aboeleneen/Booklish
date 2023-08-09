class ImageLinks {
	String? smallThumbnail;
	String? thumbnail;

	ImageLinks({this.smallThumbnail, this.thumbnail});

	factory ImageLinks.fromJson(Map<String, Object?> json) => ImageLinks(
				smallThumbnail: json['smallThumbnail'] as String?,
				thumbnail: json['thumbnail'] as String?,
			);

	Map<String, Object?> toJson() => {
				'smallThumbnail': smallThumbnail,
				'thumbnail': thumbnail,
			};
}
