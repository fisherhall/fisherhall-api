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
    sermon_name = "Keeping His Commands"
    speaker = "Rev. Francis Tam"
    scripture = "John 15:9-14"
    service_name = "Missions Sunday Worship Service"
    published_at = DateTime.new(2022, 5, 22, 13, 30)

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
      description: "2022 Church & 50th Anniversary theme is “Our God Restores” from Hebrews 12:1-2. Sub-theme for May to August is “Renew & Revive.”",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "**Sunday Service:**

 - We thank **Rev. Francis Tam**, Executive Director of the Chinese Coordination Centre of World Evangelization Canada, for ministering to us today.
 - We thank **Aaron**, **Pastor Joel**, **Fanny**, **Sam**, **Tim Chin**, **Keyan**, **Nelson** and **Amos** for serving in leading and preparation of today’s service.
 - We’ll continue to have the **English Worship Service** in person and [on
   Zoom](https://live.mcac.church)",
 )

#     . When joining in person, worshippers can
#    [register from 1 week in advance and up to the day of
#    service](https://reopening.mcac.church), but encourage to sign-up ASAP.
#  - The **Children Sunday School** offers supervision in the Fisher Hall for children to join the Zoom Sunday School in the Fisher Hall at 11:30AM.",
#     )

    Announcement.create(
      bulletin: bulletin,
      description: "**Pastor James** and his family have safely
      arrived India. Please continue to pray for their mission work in India,
      also pray for journey mercy, safety and health. He will be back on June
      2.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "**Church Care & Community:**

- Xavier was admitted to the Neuro. Your prayer is very much appreciated.
- **Pastoral Care/Spiritual Counsel & Prayer** – Pastor James is available to
meet with you on Zoom every Tuesday mornings or evenings. Speak to the ELT or
visit our Facebook group to arrange a meeting.
- Please join the **Midweek Prayer** on **Every Wednesday** 8pm. Zoom ID: 5144822704/PW: mcac.
- Fellowship Reboot - **The gospel is a family meal. It is meant to be enjoyed
  regularly and intentionally in the presence of others and for the benefit of
  others.** Fellowship Reboot meets every Thursday 8-9pm [on
  Zoom](https://fellowship.mcac.church).",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The **50th anniversary publication committee** wishes for more
      enriched content for our book. We sincerely invite b/s to supply
      different categories of photos: ❶ Family photo if your whole family was
      baptized at MCAC ❷ Baptismal photo of individuals or couples baptized on
      the same day (please specify the year)❸ Photo of individuals who accepted
      Christ or got baptized 50 years ago (in 1972)❹ Wedding photo of those who
      wedded in MCAC (specify year)❺ Current photo of couples who will be
      celebrating their 50th wedding anniversary this year ❻ Family photo of
      those who have three generations or more worshipping at MCAC ❼ Photos
      taken at church on Easter, Thanksgiving, or Christmas (specify year)❽
      Please actively participate to send your wishes and blessings to MCAC's
      50th anniversary. You can drop it off in the red and white box outside
      the sanctuary. Please send photos and notes of blessings by June 5 to
      **publication.mcac50💌gmail.com**. This special publication belongs to us.
      Let us unite to offer our blessings!"
    )

    Announcement.create(
      bulletin: bulletin,
      description: "Carol Cho and Johnny Lau are getting married at our church on June 11.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "**Building Reopening:**

 - Our church is taking a more sustainable approach for all the physical meetings at church. For now, we are maintaining the 1-meter distancing and masking at all times.
 - When joining in person worship, worshippers can [register from 1 week in advance and up to the day of service](https://reopening.mcac.church), but encourage to sign-up ASAP.
 - **Children's Sunday School** offers supervision in the Fisher Hall for children to bring their electronic devices and a pair of headphones to join their Zoom Sunday School class (11:30am-1pm). Click on [Supervised Children Sunday School](https://docs.google.com/spreadsheets/d/1rcgOS5I8AYCTCyv5vtDgsk5OhY-ENyQITNVRLDIR43E/edit?usp=sharing) tab to sign up.",
    )
  end
end
