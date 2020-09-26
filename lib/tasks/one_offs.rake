namespace :one_offs do
  desc "add new bulletin"
  task :new_bulletin => :environment do
    service = Group.find_by(slug: "english-service")
    sermon_name = "Joe Who"
    speaker = "Rev. Thomas Chan"
    scripture = "Acts 4:36-37"
    service_name = "English Worship Service"
    published_at = DateTime.new(2020, 9, 27, 13, 30)

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
      description: "We thank Pastor Thomas for ministering to us today.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "We welcome **Kristin Hum** joining us to serve as Part-time Children Ministry Coordinator effective from September 15, 2020. She was professionally trained in education and is passionate to serve God. Kindly lift her and our children in your prayers.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "To help better plan for the reopening of church facilities, the **Church Reopening Committee** urges everyone to respond to the [Church Building Reopening Survey](https://docs.google.com/forms/d/e/1FAIpQLSf923AdochLu56tQkJFqfg0jZNSVin1E2M89Kc44u5YdBLScg/viewform). The survey deadline is October 4th. Your participation is greatly appreciated.",
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
      description: "The recent explosion in Beirut damaged the Lebanon (Karantina) Alliance Church and the Alliance Bible School’s classrooms, offices, and student dorms. The C&MA [set aside a fund](https://www.cmacan.org/relief-in-lebanon/) for the Beirut relief effort from the Global Emergency Relief Fund (GERF). You can support this effort by donating to GERF through: ❶ the [CanadaHelps](https://www.canadahelps.org/en/dn/36602) (fee applies); ❷ mailing **checks** to C&MA (30 Carrie Dr., Suite100, Toronto, On. M9W 5T7); ❸ **INTERAC e-Transfer®** using the destination etransfers💌cmacan.org; ❹ offering to **MCAC**, we will forward the donation to C&MA (this will affect our church’s application to the government COVID subsidy, CEWS, since this donation will be counted as our incomes). You must specify “Lebanon Alliance Church” when making donations, no matter which channel you use.",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "We congratulate **Dorothy Lee** and **Matthew Hui** as they are getting married this Saturday at the Ottawa Chinese Alliance Church. Feel free to sign their [e-guestbook](http://dormatt2020.minted.us) ✍️",
    )

    Announcement.create(
      bulletin: bulletin,
      description: "**Justin Au-Yeung** and **Kimberly Gose Oabel** will tie the knot on October 10 at Hotel William Gray. Only the immediate families will attend the ceremony.",
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
