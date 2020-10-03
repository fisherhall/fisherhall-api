namespace :one_offs do
  desc "add new post"
  task :new_post => :environment do
    service = Group.find_by(slug: "english-service")

    post = Post.new
    post.group = service
    post.author = User.find_by(email: "ac@amoschan.com")
    content = "To help better plan for the reopening of church facilities, the
    **Church Reopening Committee** urges everyone to respond to the [Church
    Building Reopening
    Survey](https://docs.google.com/forms/d/e/1FAIpQLSf923AdochLu56tQkJFqfg0jZNSVin1E2M89Kc44u5YdBLScg/viewform).
    **The survey deadline is today.** Your participation is greatly
    appreciated.


    As physical meeting at church is limited, we rely on email, phone and
    postal mail to communicate with the members for the distribution of
    electronic and printed documents (such as offering records & receipts,
    voting ballots, pledge cards, etc.). Therefore, the church urges everyone
    to go to the [Contact Information Registration
    Page](https://docs.google.com/forms/d/e/1FAIpQLSdJLiojUX2kRmiVqVLLtPdLTUJAcLk7y7zCP0A1awD7YEt31w/viewform?vc=0&c=0&w=1&flr=0&gxids=7757)
    and fill in the contact information form. All information will be kept
    confidential"

    post.kind = :post

    post.save
  end

  desc "add new bulletin"
  task :new_bulletin => :environment do
    service = Group.find_by(slug: "english-service")
    sermon_name = "He Restores My Soul"
    speaker = "Pastor Joel Uong"
    scripture = "Psalm 23:3a"
    service_name = "English Worship Service"
    published_at = DateTime.new(2020, 10, 3, 13, 30)

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
      description: "We are glad to announce that Adrian Chai will be serving as our part-time Youth Ministry Intern starting in October. He will assist in the youth ministry and help the youth through various activities. Please kindly remember him and his ministry in your prayers.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "**45th Missions Conference** will take place October 30 to November 1. Theme: **“Unstopped in Pandemic, Thriving in Evangelism”**. Next year’s missions budget: $122,300. Speaker: Pastor Rick & Susan Kilbrai. Please prepare to join.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The distribution of the YTD (January to August) offering record and 2019 pledge card will be via email. [We urge you to register your contact info ASAP.](https://docs.google.com/forms/d/e/1FAIpQLSdJLiojUX2kRmiVqVLLtPdLTUJAcLk7y7zCP0A1awD7YEt31w/viewform?vc=0&c=0&w=1&flr=0&gxids=7757) If you need assistance, please contact donations.mcac💌gmail.com.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "It is essential for the church to have a **central registry** tracking all members coming to the church building as recommended by the government. Before coming to church, send an email to **admin💌montreal-cac.org**, stating the time and the purpose of your visit, with the full list of people accompanying you. The information will be kept by the Administration Department and will only be provided to the officials for contact tracing when necessary. Thank you for your cooperation.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "To help better plan for the reopening of church facilities, the **Church Reopening Committee** urges everyone to respond to the [Church Building Reopening Survey](https://docs.google.com/forms/d/e/1FAIpQLSf923AdochLu56tQkJFqfg0jZNSVin1E2M89Kc44u5YdBLScg/viewform).  **The survey deadline is today.** Your participation is greatly appreciated.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "As physical meeting at church is limited, we rely on email, phone and postal mail to communicate with the members for the distribution of electronic and printed documents (such as offering records & receipts, voting ballots, pledge cards, etc.). Therefore, the church urges everyone to go to the [Contact Information Registration Page](https://docs.google.com/forms/d/e/1FAIpQLSdJLiojUX2kRmiVqVLLtPdLTUJAcLk7y7zCP0A1awD7YEt31w/viewform?vc=0&c=0&w=1&flr=0&gxids=7757) and fill in the contact information form. All information will be kept confidential",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The Finance Department is distributing the **YTD (January to August) offering record** and **2019 pledge card** to the participants via email. We urge you to register your contact info on the church website asap. If you need assistance, please contact **donations.mcac💌gmail.com**.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The recent explosion in Beirut damaged the Lebanon (Karantina) Alliance Church and the Alliance Bible School’s classrooms, offices, and student dorms. The C&MA [set aside a fund](https://www.cmacan.org/relief-in-lebanon/) for the Beirut relief effort from the Global Emergency Relief Fund (GERF). You can support this effort by donating to GERF through: ❶ the [CanadaHelps](https://www.canadahelps.org/en/dn/36602) (fee applies); ❷ mailing **checks** to C&MA (7560 Airport Road, Unit 10, Mississauga, On. L4T 4H4); ❸ **INTERAC e-Transfer®** using the destination etransfers💌cmacan.org; ❹ offering to **MCAC**, we will forward the donation to C&MA (this will affect our church’s application to the government COVID subsidy, CEWS, since this donation will be counted as our incomes). You must specify “Lebanon Alliance Church” when making donations, no matter which channel you use.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "**Emmanuel and Simone** are getting married on October 21 at MCAC. Also **Justin Au-Yeung and Kimberly Gose Oabel** postponed their wedding to October 24 at MCAC. Due to the government restrictions, the weddings are going to be conducted in a private ceremony. Please remember the happy couples in your prayers.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "We thank Angela, Amos, Key, Nelson, Sam and the VSM team for the production of the Service video. **The production team is training helpers.** If you would like to serve in this area, please contact one of them.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The Youth Sunday School happens every Sunday from 11:15 am to 12:30 pm, September 13 to December 13, 2020. This semester, we will study together the Book of Romans. Join the Youth 1 class (Sec I) with Shaden and Yen-Nhi or the Youth 2 class (Sec II to V) with Jeremy and Estelle. [Students must register.](https://docs.google.com/forms/d/e/1FAIpQLSdwhStkKk7AXO-61DGcEaPsb6ttRinsKZeNtkI2bLZSABcycQ/viewform?fbclid=IwAR3XRiE8aWfUMn6UXjs2vn8aGNAToyfJrEPWagqfQd1HPqSx7qScK2Z-m7M) For enquiry, please contact Elder Daniel.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "**Pastoral Search Updates:** The PSC is working on the profile of our congregation and the pastoral job postings. Please continue to pray for the pastor whom God has prepared for us and for the congregation. May God help us trust and obey his plan for the English pastor.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The **Youth Fellowship** is starting a new school year. They meet every second Saturday on Zoom. The fellowship program and updates can be found on the MCAC Youth Facebook. Please pray for their needs. Prayer requests are posted on Facebook.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "The **English Congregation prayer meeting** is on every Wednesday at 8:00pm on Zoom, [ID: 514 482 2704; PW: mcac](https://zoom.us/j/5144822704?pwd=bllLeHF0Q2JlMC9VcExONUk3cVB5dz09).",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "Come & join us after service for a time of fellowship on Zoom ☕️: [ID: 929 7664 6166; PW: fisher](https://zoom.us/j/92976646166?pwd=TDFweTFHNENWNzJwUEhxTWs3eG9qZz09).",
    )
  end
end
