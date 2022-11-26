namespace :one_offs do
  desc "add new post"
  task :new_post => :environment do
    service = Group.find_by(slug: "english-service")

    post = Post.new
    post.group = service
    post.author = User.find_by(email: "ac@amoschan.com")
    post.banner_url = "https://mcac.s3.amazonaws.com/posts/2021081701-image-asset.jpeg"
    post.title = "Living Life From a Place of Restful Soul"

    post.kind = :post

    post.content = "**Phase 1 – July, trial period:** Maximum 25 worshippers to attend the English worship team recording.

**Phase 2 – August, church officially reopening for physical worship:** Safety
seating capacity for each service in the sanctuary (with 2 meters distancing
between each bubble) is 75 worshippers.

**Phase 3 – Church reopening for fellowships and small groups:** Number of
visitors allowed depending on the numbers of attendees with 1 meters distancing
and the size of the available room.

**Phase 4 – March 2022, church reopening after the 2nd lockdown.** Taking a
more sustainable approach to start the Phase 4 for the reopening – we are
keeping the 2-meter distancing between \"bubbles\" as one of the Safety Measures. 

**NOTE:** Children are included in the maximum number of visitors.

**A. COVID-19 Safety Measures – Visitor’s Guideline:**
 - All visitors need to **READ & SIGN** the [MCAC COVID-19 Safety Measures Policy Acknowledgment Form](https://drive.google.com/file/d/1uVkaxt73sGPITEhvCxszlSM8a2DZwJU4/view).
They may submit the signed e-copy to **booking.mcac💌gmail.com** or pass the
signed hard-copy to the Sunday service ushers or the fellowship / small group
leaders. This confirmation form only needs to be submitted once.
 - They will need to wear a **procedural mask** (a breathable disposable mask
designed for one-time use in medical environments and characterized by an ear
loop attachment and a coloured outer layer). If they do not have a procedural
mask, one will be provided.
 - All visitors must keep a **2-meter distancing between \"bubbles\"** in the
church and **wear masks at all times**.
 - Eating and drinking is allowed at church in Fisher Hall and Gym only with
maximum of 25 people each. No cooking in the kitchen, but reheating food is
allowed in microwave. Meal: no self-serving food but served only at the table
or individually prepared meals. Drinks: pre-packaged beverage or hot water in
disposable / foam cups. Utensils: disposable. **MUST:** thoroughly clean all used
areas, facilities and equipment.
 - Use the Finchley main entrance for entering and exiting during the winter season.

NOTE: Report to Worship/Service Elder and the Admin Team
(**booking.mcac💌gmail.com**) if you have tested positive for COVID-19 and was
at church up to 48 hours before the symptoms appeared or, if you did not have
symptoms, up to 48 hours before you got tested. The close contacts with the
individual who has COVID-19 will be notified by the church to contact the
Quebec Public Health COVID-19 hotline 514-644-4545 to get instructions on the
testing and the quarantine period. All members should not be coming to church
during the quarantine period.

**B. Fellowship and Small Group:**
 - Fellowship / small group leaders need to communicate one week in advance with church staff (**admin💌montreal-cac.org**) for requesting a room for meeting by providing the meeting time, date and number of people attending. The church will arrange a room accordingly.
 - Fellowship / small group leaders are responsible to record all attendees’ name and email the recorded information to **booking.mcac💌gmail.com** on the day of the meeting.
 - It is essential for the fellowship / small group leaders to remind the attendees to read and sign the [MCAC COVID-19 Safety Measures Policy Acknowledgment Form](https://mcac.s3.amazonaws.com/posts/covid-form-32b36bdb-8956-4cf1-b6ca-37474ed981c6.pdf) before the meeting. If necessary, help them submit the form.
 - Fellowship / small group leaders are responsible to implement the COVID-19 Safety Measure listed in the Visitor’s Guidelines during the meeting.
 - After the meeting, the fellowship / small group is responsible for the cleaning of all furniture, materials and equipment which they have used.

**C. Sunday Worship Service:**
 - The worship team, pastors, ushers, AV, cleaning team are excluded from the maximum number of worshippers.
 - The worship team, the speaker, the chairperson or the announcer may choose to take off their masks when they sing or speak in front of worshippers provided they are fully vaccinated. They will wear masks at any other time like everyone else. There is no limit on the numbers singers as long they respect the 2-meter distancing between \"bubbles\".
 - 3 congregations Live stream worship Sunday services with worshippers will be scheduled at church with a slight time adjustment to ensure sufficient time to clean between services (English service 9:30 am-10:50 am, Cantonese service 11:30 am-12:50 pm and Mandarin service 2:00 pm- 3:20 pm). **NOTE:** Worshipper should arrive church 15 mins before the Service starts to allow time for check-in and seating.
 - The online registration for worshippers available [here](https://docs.google.com/spreadsheets/d/14K1uu6ODLH1mS63OLbMXIXpa11C1EwrigZnbQ0Q1aFs/edit#gid=1769187956), from 1 week in advance and up to the day of service. The booking via email (**booking.mcac💌gmail.com**) will continue for the worship teams and co-workers."

    post.save
  end

namespace :one_offs do
  desc "add new post"
  task :new_post => :environment do
    group = Group.find_by(slug: "english-service")

    post = Post.new
    post.group = group
    post.author = User.find_by(email: "ac@amoschan.com")
    post.title = "MCAC 50th Anniversary"
    post.banner_url = "https://mcac.s3.amazonaws.com/posts/81bdd4dc-4b73-466d-9a3f-49c2d4e33b39.jpg"

    post.kind = :post

    post.content = "Celebration activities will be held on the Thanksgiving
Weekend (Oct 7-9). Let us grasp this opportunity to reconnect with friends
who have previously attended MCAC and invite them to join us in this unique
occasion. Let us participate and witness 50 years of grace. Glory be to
God!

Friday, October 7 (Evening)  
**Remembering The Past**  
Sharing, Thanksgiving and Prayer Meeting

Saturday, October 8 (Morning)  
**Reach Out Now**  
Open House

Sunday, October 9 (Afternoon)  
**Our God Restores**  
Anniversary Joint Worship

Sunday, October 9 (Evening)  
**Thanksgiving Banquet**

**50th Anniversary Thanksgiving Banquet** – Because of a generous gift that
offset the costs, banquet ticket prices: adult $50 and $25 for children 12
years and under (additional subsidy is available). For enquiry and register:
**mcac50y💌gmail.com**. Please register asap so that the preparation can move
forward! Deadline is July 31.

Thank you, brothers and sisters, for submitting your sharing and photos for the
50th anniversary publication. The deadline for submission is over. Please
understand since we have a limit on the content, we will not be able to use all
the photos. If you had not received an acknowledgement on your submission,
please contact the publication team (Terence Ngai, Richard Ha, Candid Yeung,
Donna Hum)."

    post.save
  end

namespace :one_offs do
  desc "add new post"
  task :new_post => :environment do
    group = Group.find_by(slug: "english-service")

    post = Post.new
    post.group = group
    post.author = User.find_by(email: "ac@amoschan.com")
    post.title = "Open House - Carnival"
    post.banner_url = "https://mcac.s3.amazonaws.com/posts/pexels-picjumbocom-225238.jpg"

    post.kind = :post

    post.content = "<img src='https://mcac.s3.amazonaws.com/posts/Screen+Shot+2022-09-10+at+9.34.13+PM.png' />

<br />

**WHEN?** October 8 2022 from 1:00 to 4:00

**WHAT?** Montreal Chinese Alliance Church - 50th Anniversary Open House and Carnival

Come join us for:  
Fun - carnival games and bouncy castle  
Food - hot dogs, popcorn, snow cones and cotton candy  

*Brief presentation of our church’s history and current activities will start at 1:00 and Carnival will begin at 1:30.

**WHERE?** 13 Finchley Street, Hampstead, Quebec H3X 2Z4

**COST?** Free!

PLEASE NOTE: Masks are required indoors.

FOR MORE INFO: **mcac50y💌gmail.com**"

    post.save
  end

 desc "add new bulletin"
  task :new_bulletin => :environment do
    service = Group.find_by(slug: "english-service")
    sermon_name = "Saving Faith"
    speaker = "Pastor James Levi"
    scripture = "James 2:14-26"
    service_name = "Holy Commmunion Sunday Worship Service"
    published_at = DateTime.new(2022, 11, 13, 14, 30)

    service_order = " - **Call to Worship**
 - **Praise & Worship**  
 - **[Announcements](#announcements)**
 - **Tithe & Offering**
 - **Sermon**  
   #{sermon_name}  
   #{scripture}  
   #{speaker}
 - **Holy Communion**
 - **Doxology**
 - **Benediction**"

    sermon = Sermon.create(
      group: service,
      name: sermon_name,
      published_at: published_at,
      speaker: speaker,
    )

    bulletin = Bulletin.create(
      published_at: published_at,
      name: service_name,
      service_order: service_order,
      group: service
    )

    Announcement.create(
      bulletin: bulletin,
      description: "Welcome friends and visitors. We invite you to make MCAC your **SPIRITUAL HOME**. Please let us know how we can be of help to you.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "2022 Church & 50th Anniversary theme is *Our God Restores* from Hebrews 12:1-2. Sub-theme for September to December is \"Rejoice & Thanksgiving.\"",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "Up to now, we received 44 pledge cards, pledged amount was
      $39,950. Next year’s Missions budget is $97,650. If you want to
      participate in the Faith Pledge, [you can do so online](https://docs.google.com/forms/d/e/1FAIpQLScDm3y5nHIXiL2XxREiWNypZ41a8f2hju0Hlts2v0S3CeQACg/viewform).
      You can learn more about the mission works our church supports from the
      handbook which you can download from the
      [handbook](https://mcac.s3.amazonaws.com/bulletins/024e5a02-49c4-4ca1-8b63-7b7fa1aa8e40-mc_handbook.pdf).
      Please continue to pray for the various mission items.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The following brothers (English congregation) **Anderson Lee** and
      **Steve Ng**, (Cantonese): Allan Lau, Terence Ngai and Patrick Tang,
      (Mandarin): Guo ZhiYuan have agreed to let their names stand as nominees
      for 2023 elders. The congregation can submit other nominations until today.
      When nominating a member, please have the consent from the nominee
      and the written consents from two members and submit to the pastors.
      Voting will take place in person on November 27 after the Sunday Service."
    )

    Announcement.create(
      bulletin: bulletin,
      description: "There will be the **Elders Board meeting** on Saturday. The
      Board will discuss the proposal for the reorganization of the Board.
      Please pray for the church leaders."
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The **Finance Team** is starting to send the donation records
      from January to August this year and the pledge card of last year to
      brothers and sisters who participated. Please check your junk mail box.
      If you need assistance, please contact the Finance Team, or send an email
      to **donations.mcac💌gmail.com**.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "**Church Care & Community:**

- Please join the **Midweek Prayer** on **Every Wednesday** 8pm. Zoom ID:
  5144822704/PW: mcac.
- **Pastoral Care/Spiritual Counsel & Prayer:** Pastor James is available to
  meet with you at the church or online. Text or WhatsApp to set
  up a time."
    )
end
