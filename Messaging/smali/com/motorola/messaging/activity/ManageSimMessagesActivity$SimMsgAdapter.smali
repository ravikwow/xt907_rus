.class Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;
.super Landroid/widget/CursorAdapter;
.source "ManageSimMessagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ManageSimMessagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimMsgAdapter"
.end annotation


# instance fields
.field private mAddressIndex:I

.field private mBodyIndex:I

.field private mContext:Landroid/content/Context;

.field private mDateIndex:I

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 569
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 570
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 571
    const-string v0, "address"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;->mAddressIndex:I

    .line 572
    const-string v0, "body"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;->mBodyIndex:I

    .line 573
    const-string v0, "date"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;->mDateIndex:I

    .line 574
    iput-object p1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;->mContext:Landroid/content/Context;

    .line 575
    return-void
.end method

.method private getAddress(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 621
    iget v2, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;->mAddressIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0, v3, v3}, Lcom/motorola/messaging/contact/Contact;->get(Ljava/lang/String;ZZ)Lcom/motorola/messaging/contact/Contact;

    move-result-object v1

    .line 623
    .local v1, "match":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 624
    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 626
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getAddressAndBody(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x0

    .line 594
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 595
    .local v2, "buffer":Landroid/text/SpannableStringBuilder;
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;->getAddress(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 596
    .local v0, "address":Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;->getBody(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 598
    .local v1, "body":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 599
    :cond_0
    iget-object v3, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0b019f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 602
    :cond_1
    if-nez v1, :cond_2

    .line 603
    const-string v1, ""

    .line 606
    :cond_2
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 607
    const-string v3, ": "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 608
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 609
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 612
    return-object v2
.end method

.method private getBody(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 616
    iget v1, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;->mBodyIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "body":Ljava/lang/String;
    return-object v0
.end method

.method private getTimeStamp(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 586
    # invokes: Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->isIncomingMessage(Landroid/database/Cursor;)Z
    invoke-static {p1}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;->access$1200(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0012

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;->mDateIndex:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/motorola/messaging/util/MessageUtils;->formatLongTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 590
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 579
    const v2, 0x7f090043

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 580
    .local v0, "body":Landroid/widget/TextView;
    invoke-direct {p0, p3}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;->getAddressAndBody(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    const v2, 0x7f090045

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 582
    .local v1, "timeStamp":Landroid/widget/TextView;
    invoke-direct {p0, p3}, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;->getTimeStamp(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/motorola/messaging/activity/ManageSimMessagesActivity$SimMsgAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
