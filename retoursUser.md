# User 1
bio cannot be modified [1]
bluesky handle can be any arbitrary (even invalid) handle [2]
create commission request button is non-functional
when scroll bar is overlapped, the upper bound would be selected [3]
vulnerability the quarkus-credential field can be extracted and used across different sessions, you should invalidate the previous credential field, i was able to get 4 session tokens by just logging in twice then reusing the token from the first time to generate new ones
some specific usernames can be used (specifically speaking, invalid ones) like <script type="text/javascript">alert("Hello this is Rain :3");</script>, despite no XSS occurs here, this breaks the user profile view section

user experience:
front page: clear and straight to point, easy for newcoming users to immediately start up
commissions page: relatively easy to use, though the requests tab seem to be struggling a bit when i'm moving the sliders around, not sure if it's due to the fact that the icons are missing and so it doesn't cache or it just doesn't do that at all, but in any case that'd probably drain data in a practical situation
artist page for commissioning: pretty simple too, nice
overall mostly good experience :3 there are some quirks but you can probaably patch that fast

# User 2
Dont put the user's Email on their profile page
that's a big privacy issue to where the artist should be in control of who's able to see that
okay next is the Comm card
the grouping with titles and description is a great start
as well as the buttons on the side are good indicator
but you left a little too much open space
soo here the page on my PC
i think this works for mobile
since people will be scrolling more and it fit the Vertical better
but immediately on PC, you can see alllll the empty spaces 😄
yee sooo a few thing I can think of rn is the Banner can be bigger, and the commission care can be bigger as well as wider
maybe in the future you can allow peep to attach example images as well
but so far it's neat, I like the dark theme and contrasting with the brighter purple
immediately draw the eyes to the user's banner as well as comm card
this you should keep
okay, Front page~ 😄 do you see what's missing?
Me : the artists? Empty space?
yes, and the two big purple buttons
that welcome banner is nice, but it shouldnt taken priority over the main function of your site
which is to find artist or manage comm
soo it need to be move elsewhere or remove in order to see something like this first
like this whole section can be condense into a "What is CoPla" button (instead of the big landing page) which leaves you room to move the main feature (search for arts and artist) button upward
and be right at the landing area
then if the page is empty below, you can have an area that feature random artists or random artworks~ 
mhmm
so far I like it tho, in its simplicity, Copla offer its content straight and to the point
compare to like Patreon for example. I can never find their "main" landing
i wish you the best of luck
lemme know how it will go cuz if you do decide to keep it going and fully support the site
I'll use it :3

# User 3
The website utility potential is great due to the ability to integrate bluesky to keep track of artist info and opening. My only feedback is to have the app also support following without bluesky integration. Basically bluesky would be great as like an "import" tool, but having an user be able do keep track of specific follow additions to newly discovered artists via your site would be great
Aesthetically it's also good with a few minor tweaks on UI/UX element bugs
(Additional feedback from user 3 while there were using it)
error on upload -> I probably suggest modifying the error message to pinpoint the reason why it failed
bluesky authentication threw an error (i by mistake uploaded a broken version of the bluesky verification by doing test and forgot to revert it back h)
but it also successfully made a link. though profile formatting is pretty rough
still, profile presentation is also a bit rough I think, since most of the text gets crammed into the box
also, another feedback probably is that the check boxes blend too much with the card colors, so it was slightly difficult to see that it had em
also, there's a check for following only but I don't think I've seen an option to follow someone yet. unless that's part of the bsky API integration
for mobile, the burger button seems to be stuck/flicker when pressed as well
minor though since the workaround is to tap off the burger menu
basically the gradient's angle changes as soon as the entire website's contents shrinks during the transition between the two page contents. since the height isn't fixed, the gradient curves on a different angle and changes the contrast of the page
(when talking about weird background gradiant flickering on the landing page)
I forgot about how to do tailwind stuff, but basically you'd want the gradient layer to be fixed somehow regardless of page size
or make it static, but static is less pretty 

# User 4
I figured that giving feedback straight on dms is better than throwing at the group.
Apparently the website works fine on mobile, despite some text bugs like <bigstuffshowingup=show> in some avatars or accounts and it feels a bit redundant in the choices (Someone tried to do script injection which sorta worked haha), like, you can see the catalog of artists but when you go to the other selection it feels it's higher detail on the same information you see in the other session x3
I say keep it up, it looks good and if it's functional if you're just going to show it tomorrow to someone (assuming it's college stuff it should be functional enough to get a good grade or even max)

# User 5 
tbh on an artists profile,  i feel like the space to the left / right can be used more?
like it feels a bit empty there, could also just be my screen res 
or maybe allowing people to set custom backgrounds kinda like on steam?
also no funni error site.... (there's no redirect on wrong pages, just a blank screen)
Overall I think the idea and setup is very nice :3 It's pretty clean for streamlining the process of finding artists. The idea of filtering by price/artstsyles/tags is pretty handy ! Are the Art specialties a set list you defined or a custom one? (it says custom ignore that im stupid) 
also fyi, the "star us on github" leads to your profile and from your profile to your full legal name, but dunno how important that is for you rn since you just seem to be asking close friends bout it haha
also maybe instead of only doing the checkbox clickable the whole field for more user friendlyness?
also filtering by availability doesnt work currently (?)
Could also be cool to have an "opening soon" status there, where artists can put down a date when they open and if it reaches 3 days before it counts as opening soon
OKay for some reason it doesnt let me save a Bio? (I press Save, it loads for a quick moment but nothing changes)
Maybe I borked it by trying to put in Japenese/Cyrilic Letters
like putting a date picker above/Below here for hte profile (talking about the opening date, like programming a date when you'd open your commissions)
where it'll automatically swith the flag once that date is hit
also add artwork atm also doesnt seem to work(which is normal it's not implemented yet)
also maybe allowing an artist/user combined role profile? probably a few that could also want that

what would also be a fun feature is maybe "Looking for Art Exchange/Art Deal" Availability :3 
