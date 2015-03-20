.class public Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;
.super Ljava/lang/Object;
.source "MessagingButtonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonData"
.end annotation


# instance fields
.field private mAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAvatar:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mHasFixedDialNumber:Z

.field private mHasLocalNumber:Z

.field private mHasOnlineAlbumAddress:Z

.field private mHasShortCode:Z

.field private mId:J

.field private mIsValid:Z

.field private mLabel:Ljava/lang/String;

.field private mLargestEmail:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNumberOfSuggestedAddresses:I

.field private mSuggestedAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/contact/Contact;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contact"    # Lcom/motorola/messaging/contact/Contact;
    .param p3, "suggestedAddress"    # Ljava/lang/String;
    .param p4, "isSuggested"    # Z

    .prologue
    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mAddresses:Ljava/util/Set;

    .line 579
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mSuggestedAddresses:Ljava/util/Set;

    .line 593
    # getter for: Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    const-string v0, "MessagingButtonAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating button for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mContext:Landroid/content/Context;

    .line 598
    invoke-direct {p0, p2}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->loadFromContact(Lcom/motorola/messaging/contact/Contact;)V

    .line 600
    if-eqz p4, :cond_1

    .line 601
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mNumberOfSuggestedAddresses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mNumberOfSuggestedAddresses:I

    .line 602
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mSuggestedAddresses:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_1
    return-void
.end method

.method static synthetic access$400(Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mAvatar:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private buildLabel()V
    .locals 3

    .prologue
    .line 757
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mAddresses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 758
    .local v0, "count":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mLabel:Ljava/lang/String;

    .line 763
    :goto_0
    return-void

    .line 761
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method private loadFromContact(Lcom/motorola/messaging/contact/Contact;)V
    .locals 3
    .param p1, "contact"    # Lcom/motorola/messaging/contact/Contact;

    .prologue
    const/4 v2, 0x1

    .line 668
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getContactId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mId:J

    .line 669
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->isEmail()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->isAlias()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mLargestEmail:Ljava/lang/String;

    .line 673
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->isOnlineAlbum()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 674
    iput-boolean v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasOnlineAlbumAddress:Z

    .line 677
    :cond_2
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->isLocalNumber()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 678
    iput-boolean v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasLocalNumber:Z

    .line 681
    :cond_3
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->isFixedDialContact()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 682
    iput-boolean v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasFixedDialNumber:Z

    .line 685
    :cond_4
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->isShortCode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 686
    iput-boolean v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasShortCode:Z

    .line 689
    :cond_5
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mAvatar:Landroid/graphics/Bitmap;

    .line 691
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 692
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->isValid()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mIsValid:Z

    .line 693
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mName:Ljava/lang/String;

    .line 694
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->buildLabel()V

    .line 695
    return-void
.end method


# virtual methods
.method public addInfo(Lcom/motorola/messaging/contact/Contact;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "contact"    # Lcom/motorola/messaging/contact/Contact;
    .param p2, "suggestedAddress"    # Ljava/lang/String;
    .param p3, "isSuggested"    # Z

    .prologue
    const/4 v1, 0x1

    .line 714
    # getter for: Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    const-string v0, "MessagingButtonAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_0
    iget-wide v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mId:J

    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getContactId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    .line 718
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 719
    iget-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mIsValid:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->isValid()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mIsValid:Z

    .line 720
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mName:Ljava/lang/String;

    .line 722
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->isEmail()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->isAlias()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mLargestEmail:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 724
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mLargestEmail:Ljava/lang/String;

    .line 730
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->isOnlineAlbum()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 731
    iput-boolean v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasOnlineAlbumAddress:Z

    .line 734
    :cond_3
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->isFixedDialContact()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 735
    iput-boolean v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasFixedDialNumber:Z

    .line 738
    :cond_4
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->isLocalNumber()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 739
    iput-boolean v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasLocalNumber:Z

    .line 742
    :cond_5
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->isShortCode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 743
    iput-boolean v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasShortCode:Z

    .line 746
    :cond_6
    if-eqz p3, :cond_7

    .line 747
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mNumberOfSuggestedAddresses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mNumberOfSuggestedAddresses:I

    .line 748
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mSuggestedAddresses:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 751
    :cond_7
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->buildLabel()V

    .line 754
    :cond_8
    return-void

    .line 719
    :cond_9
    const/4 v0, 0x0

    goto :goto_0

    .line 725
    :cond_a
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mLargestEmail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 726
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mLargestEmail:Ljava/lang/String;

    goto :goto_1
.end method

.method public getAddresses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 856
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mAddresses:Ljava/util/Set;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 771
    iget-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasOnlineAlbumAddress:Z

    if-eqz v0, :cond_0

    .line 772
    const-wide/16 v0, -0xa

    .line 778
    :goto_0
    return-wide v0

    .line 773
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasLocalNumber:Z

    if-eqz v0, :cond_1

    .line 774
    const-wide/16 v0, -0xb

    goto :goto_0

    .line 775
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasFixedDialNumber:Z

    if-eqz v0, :cond_2

    .line 776
    const-wide/16 v0, -0xc

    goto :goto_0

    .line 778
    :cond_2
    iget-wide v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mId:J

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLargestEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mLargestEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfAddresses()I
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public hasAddress(Ljava/lang/String;)Z
    .locals 3
    .param p1, "addressToMatch"    # Ljava/lang/String;

    .prologue
    .line 823
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mAddresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 824
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/motorola/messaging/contact/ContactUtils;->isMessagableNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/motorola/messaging/contact/ContactUtils;->isMessagableNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 828
    :cond_1
    const/4 v2, 0x1

    .line 831
    .end local v0    # "address":Ljava/lang/String;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mLargestEmail:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFixedDialNumber()Z
    .locals 1

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasFixedDialNumber:Z

    return v0
.end method

.method public hasLocalNumber()Z
    .locals 1

    .prologue
    .line 880
    iget-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasLocalNumber:Z

    return v0
.end method

.method public hasOnlineAlbumAddress()Z
    .locals 1

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasOnlineAlbumAddress:Z

    return v0
.end method

.method public hasShortCode()Z
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasShortCode:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 839
    iget-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mIsValid:Z

    return v0
.end method

.method public update(Lcom/motorola/messaging/contact/Contact;)V
    .locals 3
    .param p1, "contact"    # Lcom/motorola/messaging/contact/Contact;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 655
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 656
    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mLargestEmail:Ljava/lang/String;

    .line 657
    iput-boolean v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasOnlineAlbumAddress:Z

    .line 658
    iput-boolean v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasLocalNumber:Z

    .line 659
    iput-boolean v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasFixedDialNumber:Z

    .line 660
    iput-boolean v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasShortCode:Z

    .line 661
    iput v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mNumberOfSuggestedAddresses:I

    .line 662
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mSuggestedAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 663
    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mAvatar:Landroid/graphics/Bitmap;

    .line 664
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->loadFromContact(Lcom/motorola/messaging/contact/Contact;)V

    .line 665
    return-void
.end method

.method public updateAddresses(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "selectedAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 615
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mAddresses:Ljava/util/Set;

    .line 616
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mLargestEmail:Ljava/lang/String;

    .line 617
    iput-boolean v4, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasOnlineAlbumAddress:Z

    .line 618
    iput-boolean v4, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasLocalNumber:Z

    .line 619
    iput-boolean v4, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasShortCode:Z

    .line 620
    iput-boolean v3, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mIsValid:Z

    .line 621
    iput v4, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mNumberOfSuggestedAddresses:I

    .line 622
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mAddresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 623
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/messaging/contact/ContactUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/motorola/messaging/contact/ContactUtils;->isAliasAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 624
    :cond_0
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mLargestEmail:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 625
    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mLargestEmail:Ljava/lang/String;

    .line 631
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/motorola/messaging/contact/ContactUtils;->isOnlineAlbumAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 632
    iput-boolean v3, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasOnlineAlbumAddress:Z

    .line 635
    :cond_2
    invoke-static {}, Lcom/motorola/messaging/contact/ContactUtils;->getOwnMSISDN()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 636
    iput-boolean v3, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasLocalNumber:Z

    .line 639
    :cond_3
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/motorola/messaging/contact/ContactUtils;->isShortCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 640
    iput-boolean v3, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mHasShortCode:Z

    .line 643
    :cond_4
    iget-boolean v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mIsValid:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/motorola/messaging/contact/ContactUtils;->isMessagableAddress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mIsValid:Z

    goto :goto_0

    .line 626
    :cond_5
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mLargestEmail:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 627
    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->mLargestEmail:Ljava/lang/String;

    goto :goto_1

    :cond_6
    move v2, v4

    .line 643
    goto :goto_2

    .line 645
    .end local v0    # "address":Ljava/lang/String;
    :cond_7
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/MessagingButtonAdapter$ButtonData;->buildLabel()V

    .line 646
    return-void
.end method
