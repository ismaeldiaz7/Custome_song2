Juice = "C:/Users/ismael_diaz/Desktop/Sonic-Pi Project/Audacity/Juicebox(Beat).wav"
Tony = "C:/Users/ismael_diaz/Desktop/Sonic-Pi Project/Audacity/Tony Tone(Cut).wav"
vocal = "C:/Users/ismael_diaz/Desktop/Sonic-Pi Project/Audacity/NEW MAGIC WAND-Vocals.wav"
Trunks = "C:/Users/ismael_diaz/Desktop/Sonic-Pi Project/Audacity/777.wav"
Aye = "C:/Users/ismael_diaz/Desktop/Sonic-Pi Project/Audacity/XXXTENTACION(Aye).wav"
Uhh = "C:/Users/ismael_diaz/Desktop/Sonic-Pi Project/Audacity/XXXTENTACION(Uh).wav"
Aye_trunks = "C:/Users/ismael_diaz/Desktop/Sonic-Pi Project/Audacity/Kid_trunks(Aye).wav"
Kurt = "C:/Users/ismael_diaz/Desktop/Sonic-Pi Project/Audacity/Nirvana - Smells Like Teen Spirit isolated vocal track, vocals only.wav"
use_bpm 60
use_synth :piano
define :play_notes do |note1,note2|
  play note1, sustain: 3
  play note2, sustain: 3
  sleep 0.25
  play note1, sustain: 3
  play note2, sustain: 3
  sleep 0.5
end
define :final_section do
  play:c1, sustain: 4
  sleep 1
  play:c4
  sleep 0.25
  play:g3
  sleep 1
  play:c1, sustain: 4
  sleep 1
  play:c4
  sleep 0.5
  play:g3, sustain: 4
  sleep 1.5
  play:b6, sustain: 5
end
define :chords1 do
  sleep 1
  play:g2, sustain: 2
  sleep 1
  play:e3, sustain: 2
  sleep 1
  play:a1, sustain: 2
  sleep 0.5
  play:b2, sustain: 2
  sleep 0.5
  play:a2, sustain: 2
  sleep 1
end
define :final_piano do |p1,p2,p3|
  play p1,sustain: 4
  play p2,sustain: 2
  play p3,sustain: 4
  sleep 0.1
end
sample Kurt, amp: 3
sleep 16.5
#Transistion
x=1
3.times do
  sample Tony, amp: x
  sleep 3.42
  x=x+1
end
sample vocal, amp: 3
sleep 2.9
x=0.5
#Introduction to other songs
live_loop :beat do
  5.times do
    sample Juice, amp: x, rate: 0.5
    sleep 3.1
    x=x+0.3
  end
  if x == 1.1
    4.times do
      sample Juice, amp: x, rate: 0.5
      sleep 3.1
      x=x-0.3
    end
    stop
  end
  stop
end
sleep 10
x=0.5
live_loop :trunks do
  sample Trunks, amp: x
  sleep 4.377
  x=x+1.5
  if x == 10.1
    4.times do
      sample Trunks, amp: x
      x=x-2.5
      sleep 4.377
    end
    stop
  end
end
sleep 13
use_bpm 83
live_loop:Trash do
  4.times do
    with_fx :distortion do
      play_notes :f2,:a2
      play_notes :g2,:d2
      sleep 0.5
      play:b3
      sleep 0.25
      play:g4
      sleep 1
      play_notes :f2,:a2
      play_notes :f1,:a1
      sleep 5
    end
  end
  stop
end
#Paramerterized Function
sleep 3
live_loop :adlibs do
  4.times do
    sample choose([Aye,Uhh,Aye_trunks]), amp: 10
    sleep 7
  end
  stop
end
#Randomness
sleep 39
x=0
y=1.2
define :final_section do
  play:c1, sustain: 4
  sleep 1
  play:c4
  sleep 0.25
  play:g3
  sleep 1
  play:c1, sustain: 4
  sleep 1
  play:c4
  sleep 0.5
  play:g3, sustain: 4
  sleep 1.5
  play:b6, sustain: 5
end
define :chords1 do
  sleep 1
  play:g2, sustain: 2
  sleep 1
  play:e3, sustain: 2
  sleep 1
  play:a1, sustain: 2
  sleep 0.5
  play:b2, sustain: 2
  sleep 0.5
  play:a2, sustain: 2
  sleep 1
end

define :final_piano do |p1,p2,p3|
  play p1,sustain: 4
  play p2,sustain: 2
  play p3,sustain: 4
  sleep 0.1
end
2.times do
  final_piano :c5,:d4,:g3
  chords1
  sleep 1
  play:a2, sustain: 2
end
live_loop:glisando do
  2.times do
    sleep 2
    play:g5
    sleep 0.25
    play:g4
    sleep 0.25
    play:g3
    sleep 0.25
    play:e2
    play:f2
    sleep 0.25
    play:c1
    sleep 0.25
    play:a1, sustain: 4
    sleep 0.75
  end
  stop
end
sleep 9
final_section