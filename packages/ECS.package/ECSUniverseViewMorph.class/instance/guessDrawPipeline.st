initialize-release
guessDrawPipeline

	self universe pipelines
		detect: [:p |
			(p title includesSubstring: 'draw' caseSensitive: false) or: [
				(p title includesSubstring: 'render' caseSensitive: false)]]
		ifFound: [:p | self drawPipelineName: p title]
		ifNone: []