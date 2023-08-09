class IndustryIdentifier {
	String? type;
	String? identifier;

	IndustryIdentifier({this.type, this.identifier});

	factory IndustryIdentifier.fromJson(Map<String, Object?> json) {
		return IndustryIdentifier(
			type: json['type'] as String?,
			identifier: json['identifier'] as String?,
		);
	}



	Map<String, Object?> toJson() => {
				'type': type,
				'identifier': identifier,
			};
}
