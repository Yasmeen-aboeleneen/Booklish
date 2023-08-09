class PanelizationSummary {
	bool? containsEpubBubbles;
	bool? containsImageBubbles;

	PanelizationSummary({
		this.containsEpubBubbles, 
		this.containsImageBubbles, 
	});

	factory PanelizationSummary.fromJson(Map<String, Object?> json) {
		return PanelizationSummary(
			containsEpubBubbles: json['containsEpubBubbles'] as bool?,
			containsImageBubbles: json['containsImageBubbles'] as bool?,
		);
	}



	Map<String, Object?> toJson() => {
				'containsEpubBubbles': containsEpubBubbles,
				'containsImageBubbles': containsImageBubbles,
			};
}
