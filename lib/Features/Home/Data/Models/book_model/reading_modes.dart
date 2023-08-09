class ReadingModes {
	bool? text;
	bool? image;

	ReadingModes({this.text, this.image});

	factory ReadingModes.fromJson(Map<String, Object?> json) => ReadingModes(
				text: json['text'] as bool?,
				image: json['image'] as bool?,
			);

	Map<String, Object?> toJson() => {
				'text': text,
				'image': image,
			};
}
