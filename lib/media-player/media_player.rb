require "media-player/version"

module MediaPlayer
	def the_view
		song = 'war_for_you.mp3'
		local_file = NSURL.fileURLWithPath(File.join(NSBundle.mainBundle.resourcePath,song))
		options = {:control_style => 0, :should_autoplay => false, :delay_play => true}
		@media_player = BW::Media.play(local_file,options) {}
		@media_player.view.frame = [[10, 100], [300, 300]]
		@media_player.view.backgroundColor = UIColor.clearColor

		@prev_button = UIButton.rounded_rect
		@prev_button.frame = CGRectMake(0,0,100,100)
		#@prev_button.setTitle("previous", forState: UIControlStateNormal)
		@prev_button.when(UIControlEventTouchUpInside){
			prev_song
		}

		@main_button = UIButton.rounded_rect
		@main_button.frame = CGRectMake(110,0,100,100)
		@main_button.setTitle("play/pause", forState: UIControlStateNormal)
		@main_button.when(UIControlEventTouchUpInside){
			play_pause_toggle
		}

		@next_button = UIButton.rounded_rect
		@next_button.frame = CGRectMake(220,0,100,100)
		@next_button.setTitle("next", forState: UIControlStateNormal)
		@next_button.when(UIControlEventTouchUpInside){
			next_song
		}
		
		@media_player.view.addSubview @next_button
		@media_player.view.addSubview @prev_button
		@media_player.view.addSubview @main_button

		@media_player.view
	end

	def current_song(current)
		current
	end

	def lol_pause
		p 'lol_pause'
		#@media_player.pause
	end

	def prev_song
		p "prev"
	end

	def play_pause_toggle
		p "play_pause"
		@media_player.pause
	end

	def next_song
		p "next"
	end
end
