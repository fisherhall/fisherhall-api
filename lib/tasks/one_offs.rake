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

 desc "add new bulletin"
  task :new_bulletin => :environment do
    service = Group.find_by(slug: "english-service")
    sermon_name = "How to Live Out God's Calling and Fulfill His Purpose in a Godless and Chaotic World"
    speaker = "Rev. James Levi"
    scripture = "Luke 1:5-25"
    service_name = "Sunday Worship Service"
    published_at = DateTime.new(2022, 3, 27, 13, 30)

    service_order = " - **Call to Worship**
 - **Praise & Worship**  
 - **[Announcements](#announcements)**
 - **Tithe & Offering**
 - **Sermon**  
   #{sermon_name}  
   #{scripture}  
   #{speaker}
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
      description: "**2022 Church and 50th Anniversary theme is \"Our God Restores\".** Theme verse is Hebrews 12:1-2. January to April emphasis: **Repent and restore**.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "We will have a **baptism** coming up (most probably on April 17). If you are considering **baptism** or **membership**, please speak with the Pastors or Elders.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The church is preparing a **50th Anniversary publication**. We
      welcome brothers and sisters to share from these three sub-themes:
      “Repent and Restore”, “Renew and Revive”, “Rejoice and Thanksgiving”.
      Write-ups can be sent to **publication.mcac50💌gmail.com** or
      [uploaded here](https://docs.google.com/forms/d/1OTAu_ZHzySIg0ve8EnVvIGNliT5v2o8mBYyxae4uOF8/viewform?edit_requested=true).
      Using the same link, you may also share your precious MCAC related
      photos and tell us your areas of faithful service. Deadline to submit May
      15.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "**Sunday Service & Building Reopening:**

 - We thank **Shane**, **Aaron**, **Rosalie**, **Josiah**, **Sam**, **Tim Chin**, **Keyan**, **Nelson** and **Amos** for serving in leading and preparation of today’s service.
 - Next Sunday will be the **Holy Communion**. Please prepare your heart to come. We ask those who are baptized and worship online to prepare the elements (bread and grape juice) at home and participate during the Holy Communion. We invite those who are not baptized to join in meditation.
 - We’ll continue to have the **English Worship Service** in person and [on Zoom](https://live.mcac.church).
 - Worshippers can [register from 1 week in advance and up to the day of service](https://docs.google.com/spreadsheets/d/14K1uu6ODLH1mS63OLbMXIXpa11C1EwrigZnbQ0Q1aFs/edit). [More information available here.](https://reopening.mcac.church)
 - Our church is also reopened to fellowships and small groups to have meeting. You may email to **booking.mcac💌gmail.com** to request a room for your group. You must follow the [Visitors Guidelines](https://reopening.mcac.church) while you using the church facilities.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "**Church Care & Community:**

- **Pastoral Care/Spiritual Counsel & Prayer** – Pastor James is available to
meet with you on Zoom every Tuesday mornings or evenings. Speak to the ELT or
visit our Facebook group to arrange a meeting.
- Please join the **Midweek Prayer** on **every Wednesday** 8pm. Zoom ID: 5144822704/PW:
mcac. During the **Lent Season**, we focus on meditating Jesus and on prayers.
There is also a 40 Days Devotional [From Ashes to Resurrection](https://drive.google.com/file/d/1oDD7D2hkGiV1dvzTas7h5cNdBPlGua_z/view?usp=sharing) which is
a very good resource for our daily devotion. May God lead us into a time
of surrender and draw us in His presence.
- Fellowship Reboot is on hold as we are joining the Wednesday Prayer meeting for the duration of Lent.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The **Youth Group** is looking for counselors to mentor and
walk alongside our youth (high school to university). Please prayerfully
consider this serving opportunity and reach out to Adrian, Alvin or
Alison for more information **youthmcac💌gmail.com**.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "There have been more than 3.2 million Ukrainians who fled
to the neighbouring European countries, among which, more than 1.8
millions fled to Polish border. In response to this urgent situation the
C&MA in Canada has connected with the Church of Christ in Poland. The
partner church is already providing temporary housing and distributing
food and supplies as a first response. However there is a need for
additional funding for this emergency relief. If you’d like to join in
supporting refugees, you can donate to
[C&MA’s GERF](https://thealliancecanada.ca/gift/global-emergency-response/)
or you can specify “Ukraine Refugee Relief” when offering at church. The offering will be
tax receipted. Pray for Ukraine. Pray for peace."
    )

    Announcement.create(
      bulletin: bulletin,
      description: "**Children's Ministry** is looking for **1 summer intern** (end of
June to end of August). Learn to create and lead meaningful lessons and
fun activities for the summer program. For more information please contact
[Kristin Hum](mailto:children@montreal-cac.org)",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The Finance co-workers are starting to send out the “2021
Offering Tax Receipt” through email. Just in case, please also check your
Junk mail. If you have questions regarding the receipt, please contact:
**donations.mcac💌gmail.com**.",
    )

  end
end
