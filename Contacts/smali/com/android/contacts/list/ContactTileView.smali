.class public abstract Lcom/android/contacts/list/ContactTileView;
.super Landroid/widget/FrameLayout;
.source "ContactTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactTileView$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHorizontalDivider:Landroid/view/View;

.field protected mListener:Lcom/android/contacts/list/ContactTileView$Listener;

.field private mLookupUri:Landroid/net/Uri;

.field private mName:Landroid/widget/TextView;

.field private mPhoneLabel:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mPushState:Landroid/view/View;

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mStatus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactTileView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected createClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/android/contacts/list/ContactTileView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactTileView$1;-><init>(Lcom/android/contacts/list/ContactTileView;)V

    return-object v0
.end method

.method protected abstract getApproximateImageSize()I
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method protected abstract isDarkTheme()Z
.end method

.method public loadFromContact(Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;)V
    .locals 5
    .param p1, "entry"    # Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 100
    if-eqz p1, :cond_9

    .line 101
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->lookupKey:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    .line 104
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 106
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->phoneLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactTileView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-eqz v0, :cond_7

    .line 127
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 128
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->getApproximateImageSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDarkTheme()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    .line 131
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 143
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 144
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 151
    :cond_4
    :goto_2
    return-void

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->presenceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 134
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 136
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v2, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->getApproximateImageSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDarkTheme()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    goto :goto_1

    .line 140
    :cond_7
    sget-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    const-string v1, "contactPhotoManager not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 145
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 149
    :cond_9
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 59
    const v1, 0x7f06008f

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mName:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f06008e

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 62
    const v1, 0x7f060098

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    .line 63
    const v1, 0x7f060090

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f060094

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f060093

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    .line 66
    const v1, 0x7f060099

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    .line 67
    const v1, 0x7f060091

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    .line 69
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->createClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 71
    .local v0, "listener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setHorizontalDividerVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/contacts/list/ContactTileView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/ContactTileView$Listener;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileView;->mListener:Lcom/android/contacts/list/ContactTileView$Listener;

    .line 155
    return-void
.end method

.method public setPhotoManager(Lcom/android/contacts/ContactPhotoManager;)V
    .locals 0
    .param p1, "photoManager"    # Lcom/android/contacts/ContactPhotoManager;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 92
    return-void
.end method
