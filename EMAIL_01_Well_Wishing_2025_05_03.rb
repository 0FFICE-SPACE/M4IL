/
 _______    || TO: Thomas-m-Butterworthgithub.com
|==  { }|   || FROM: 0FFICE-SPACEgithub.com
|  ==== |   || CC: NONE
'-------'   || BCC: NONE
______________________________________________________________________

Dear Thom,

Hope you are well, Ive made us an email inbox on the github in order to 

send messages with little songs attached.

All the Best,
Callum

/

define :d_chirrup do |n, t|
  use_synth :kalimba
  blip = t/16
  play n-12, release: blip*2
  sleep blip
  play n, release: blip*4
  
end
use_bpm 80

live_loop :may_this_find_you_well do
  d_chirrup [:E5,:D5,:C5,:A5].tick, 1.0
  sleep 1
end

live_loop :to_whom_it_may_concern, sync: :may_this_find_you_well do
  d_chirrup [:A5,:A5,:C7,:A7].tick, 1.0
  sleep 1
end

