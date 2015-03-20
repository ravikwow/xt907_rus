.class public Lcom/motorola/messaging/view/ContactTileView;
.super Landroid/widget/RelativeLayout;
.source "ContactTileView.java"


# instance fields
.field private mBadge:Landroid/widget/QuickContactBadge;

.field private mContactAddress:Landroid/widget/TextView;

.field private mContactName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public bind(Lcom/motorola/messaging/contact/Contact;)V
    .locals 0
    .param p1, "contact"    # Lcom/motorola/messaging/contact/Contact;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/view/ContactTileView;->bindContactInfo(Lcom/motorola/messaging/contact/Contact;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/view/ContactTileView;->bindBadge(Lcom/motorola/messaging/contact/Contact;)V

    .line 44
    return-void
.end method

.method public bindBadge(Lcom/motorola/messaging/contact/Contact;)V
    .locals 4
    .param p1, "contact"    # Lcom/motorola/messaging/contact/Contact;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 57
    iget-object v1, p0, Lcom/motorola/messaging/view/ContactTileView;->mBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 58
    iget-object v1, p0, Lcom/motorola/messaging/view/ContactTileView;->mBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getHighResAvatar()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    .local v0, "avatarBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->existsInDatabase()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/motorola/messaging/view/ContactTileView;->mBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 64
    iget-object v1, p0, Lcom/motorola/messaging/view/ContactTileView;->mBadge:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/motorola/messaging/view/ContactTileView;->mBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/view/ContactTileView;->mBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    return-void

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->isOnlineAlbum()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->isEmail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/motorola/messaging/view/ContactTileView;->mBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 69
    iget-object v1, p0, Lcom/motorola/messaging/view/ContactTileView;->mBadge:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/motorola/messaging/view/ContactTileView;->mBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->isMessagableNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/motorola/messaging/view/ContactTileView;->mBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 72
    iget-object v1, p0, Lcom/motorola/messaging/view/ContactTileView;->mBadge:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/motorola/messaging/view/ContactTileView;->mBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public bindContactInfo(Lcom/motorola/messaging/contact/Contact;)V
    .locals 2
    .param p1, "contact"    # Lcom/motorola/messaging/contact/Contact;

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->existsInDatabase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/motorola/messaging/view/ContactTileView;->mContactName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/ContactTileView;->mContactName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/motorola/messaging/view/ContactTileView;->mContactAddress:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/motorola/messaging/contact/Contact;->getFormattedAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 36
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/messaging/view/ContactTileView;->mContactName:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f09002b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/messaging/view/ContactTileView;->mContactAddress:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/motorola/messaging/view/ContactTileView;->mBadge:Landroid/widget/QuickContactBadge;

    .line 39
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 82
    invoke-super {p0, p1, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 83
    return-void
.end method
