.class public Lcom/motorola/messaging/view/ConversationHeaderView;
.super Landroid/widget/RelativeLayout;
.source "ConversationHeaderView.java"

# interfaces
.implements Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;
.implements Lcom/motorola/messaging/conversation/DraftCache$OnDraftChangedListener;


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field private static final STYLE_BOLD:Landroid/text/style/StyleSpan;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBadge:Landroid/widget/QuickContactBadge;

.field private mBrowserMsgView:Landroid/view/View;

.field private mConversationHeader:Lcom/motorola/messaging/conversation/ConversationHeader;

.field private mCountView:Landroid/widget/TextView;

.field private mDateView:Landroid/widget/TextView;

.field private mDraftView:Landroid/view/View;

.field private final mDummyClickListener:Landroid/view/View$OnClickListener;

.field private mErrorIndicator:Landroid/view/View;

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mLastMessageTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50
    const-class v0, Lcom/motorola/messaging/view/ConversationHeaderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/view/ConversationHeaderView;->TAG:Ljava/lang/String;

    .line 51
    sput-boolean v1, Lcom/motorola/messaging/view/ConversationHeaderView;->DEBUG:Z

    .line 52
    sget-boolean v0, Lcom/motorola/messaging/view/ConversationHeaderView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/view/ConversationHeaderView;->LOCAL_LOG:Z

    .line 70
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/motorola/messaging/view/ConversationHeaderView;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/motorola/messaging/view/ConversationHeaderView$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/view/ConversationHeaderView$1;-><init>(Lcom/motorola/messaging/view/ConversationHeaderView;)V

    iput-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mDummyClickListener:Landroid/view/View$OnClickListener;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/motorola/messaging/view/ConversationHeaderView$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/view/ConversationHeaderView$1;-><init>(Lcom/motorola/messaging/view/ConversationHeaderView;)V

    iput-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mDummyClickListener:Landroid/view/View$OnClickListener;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/view/ConversationHeaderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/ConversationHeaderView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/motorola/messaging/view/ConversationHeaderView;->updateFromView()V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/messaging/view/ConversationHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/view/ConversationHeaderView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mDraftView:Landroid/view/View;

    return-object v0
.end method

.method private formatBold(Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isUnread"    # Z

    .prologue
    .line 260
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 263
    .local v0, "buf":Landroid/text/SpannableStringBuilder;
    if-eqz p2, :cond_0

    .line 264
    sget-object v1, Lcom/motorola/messaging/view/ConversationHeaderView;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 267
    :cond_0
    return-object v0
.end method

.method private setConversationHeader(Lcom/motorola/messaging/conversation/ConversationHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/motorola/messaging/conversation/ConversationHeader;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mConversationHeader:Lcom/motorola/messaging/conversation/ConversationHeader;

    .line 90
    return-void
.end method

.method private setTextColorState(Landroid/widget/TextView;Z)V
    .locals 3
    .param p1, "field"    # Landroid/widget/TextView;
    .param p2, "isUnread"    # Z

    .prologue
    .line 197
    if-eqz p2, :cond_1

    const v1, 0x7f07000e

    .line 198
    .local v1, "resId":I
    :goto_0
    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 200
    .local v0, "colorList":Landroid/content/res/ColorStateList;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 202
    .end local v0    # "colorList":Landroid/content/res/ColorStateList;
    :cond_0
    return-void

    .line 197
    .end local v1    # "resId":I
    :cond_1
    const v1, 0x7f07000d

    goto :goto_0
.end method

.method private updateBadge()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 107
    iget-object v1, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mConversationHeader:Lcom/motorola/messaging/conversation/ConversationHeader;

    .line 109
    .local v1, "ch":Lcom/motorola/messaging/conversation/ConversationHeader;
    invoke-virtual {v1}, Lcom/motorola/messaging/conversation/ConversationHeader;->getContacts()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v3

    .line 110
    .local v3, "recipients":Lcom/motorola/messaging/contact/ContactList;
    const/4 v0, 0x0

    .line 111
    .local v0, "avatarBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 113
    iget-object v4, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBadge:Landroid/widget/QuickContactBadge;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 114
    iget-object v4, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBadge:Landroid/widget/QuickContactBadge;

    iget-object v5, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mDummyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/contact/Contact;

    .line 118
    .local v2, "contact":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v2}, Lcom/motorola/messaging/contact/Contact;->isLocalNumber()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    invoke-static {}, Lcom/motorola/messaging/contact/Contact;->getSelfAvatar()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    .end local v2    # "contact":Lcom/motorola/messaging/contact/Contact;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 150
    iget-object v4, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    :cond_1
    return-void

    .line 121
    .restart local v2    # "contact":Lcom/motorola/messaging/contact/Contact;
    :cond_2
    invoke-virtual {v2}, Lcom/motorola/messaging/contact/Contact;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    invoke-virtual {v2}, Lcom/motorola/messaging/contact/Contact;->existsInDatabase()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 123
    iget-object v4, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/motorola/messaging/contact/Contact;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 124
    iget-object v4, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBadge:Landroid/widget/QuickContactBadge;

    iget-object v5, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {v2}, Lcom/motorola/messaging/contact/Contact;->isOnlineAlbum()Z

    move-result v4

    if-nez v4, :cond_0

    .line 127
    invoke-virtual {v2}, Lcom/motorola/messaging/contact/Contact;->isEmail()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 128
    iget-object v4, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 129
    iget-object v4, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBadge:Landroid/widget/QuickContactBadge;

    iget-object v5, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 130
    :cond_4
    invoke-virtual {v2}, Lcom/motorola/messaging/contact/Contact;->isMessagableNumber()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    iget-object v4, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 132
    iget-object v4, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBadge:Landroid/widget/QuickContactBadge;

    iget-object v5, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 137
    .end local v2    # "contact":Lcom/motorola/messaging/contact/Contact;
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/messaging/contact/ContactList;->getAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    iget-object v5, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBadge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/messaging/contact/Contact;

    invoke-virtual {v4}, Lcom/motorola/messaging/contact/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 141
    iget-object v4, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBadge:Landroid/widget/QuickContactBadge;

    new-instance v5, Lcom/motorola/messaging/view/ConversationHeaderView$2;

    invoke-direct {v5, p0, v1}, Lcom/motorola/messaging/view/ConversationHeaderView$2;-><init>(Lcom/motorola/messaging/view/ConversationHeaderView;Lcom/motorola/messaging/conversation/ConversationHeader;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private updateFromView()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mConversationHeader:Lcom/motorola/messaging/conversation/ConversationHeader;

    .line 156
    .local v0, "ch":Lcom/motorola/messaging/conversation/ConversationHeader;
    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/ConversationHeader;->updateRecipients()V

    .line 157
    iget-object v2, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/ConversationHeader;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/ConversationHeader;->isRead()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v3, v1}, Lcom/motorola/messaging/view/ConversationHeaderView;->formatBold(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-direct {p0}, Lcom/motorola/messaging/view/ConversationHeaderView;->updateBadge()V

    .line 159
    return-void

    .line 157
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/content/Context;Lcom/motorola/messaging/conversation/ConversationHeader;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ch"    # Lcom/motorola/messaging/conversation/ConversationHeader;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 206
    invoke-direct {p0, p2}, Lcom/motorola/messaging/view/ConversationHeaderView;->setConversationHeader(Lcom/motorola/messaging/conversation/ConversationHeader;)V

    .line 208
    invoke-virtual {p2}, Lcom/motorola/messaging/conversation/ConversationHeader;->hasUnreadMessages()Z

    move-result v2

    .line 211
    .local v2, "hasUnreadMessages":Z
    if-eqz v2, :cond_0

    const v3, 0x7f02000b

    :goto_0
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 215
    iget-object v3, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mFromView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/motorola/messaging/conversation/ConversationHeader;->getFrom()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lcom/motorola/messaging/view/ConversationHeaderView;->formatBold(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v3, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0, v3, v2}, Lcom/motorola/messaging/view/ConversationHeaderView;->setTextColorState(Landroid/widget/TextView;Z)V

    .line 219
    invoke-virtual {p2}, Lcom/motorola/messaging/conversation/ConversationHeader;->getMessageCount()I

    move-result v1

    .line 220
    .local v1, "count":I
    if-lez v1, :cond_1

    .line 221
    iget-object v3, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mCountView:Landroid/widget/TextView;

    const v6, 0x7f0b0008

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/motorola/messaging/conversation/ConversationHeader;->getMessageCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lcom/motorola/messaging/view/ConversationHeaderView;->formatBold(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v3, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v3, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mCountView:Landroid/widget/TextView;

    invoke-direct {p0, v3, v2}, Lcom/motorola/messaging/view/ConversationHeaderView;->setTextColorState(Landroid/widget/TextView;Z)V

    .line 229
    :goto_1
    iget-object v3, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/motorola/messaging/conversation/ConversationHeader;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lcom/motorola/messaging/view/ConversationHeaderView;->formatBold(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v3, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mDateView:Landroid/widget/TextView;

    invoke-direct {p0, v3, v2}, Lcom/motorola/messaging/view/ConversationHeaderView;->setTextColorState(Landroid/widget/TextView;Z)V

    .line 235
    iget-object v3, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mLastMessageTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/motorola/messaging/conversation/ConversationHeader;->getSnippet()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v3, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mLastMessageTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 237
    iget-object v3, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mLastMessageTextView:Landroid/widget/TextView;

    invoke-direct {p0, v3, v2}, Lcom/motorola/messaging/view/ConversationHeaderView;->setTextColorState(Landroid/widget/TextView;Z)V

    .line 241
    iget-object v6, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mErrorIndicator:Landroid/view/View;

    invoke-virtual {p2}, Lcom/motorola/messaging/conversation/ConversationHeader;->hasError()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v3, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mDraftView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/motorola/messaging/conversation/ConversationHeader;->hasDraft()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 247
    invoke-virtual {p2}, Lcom/motorola/messaging/conversation/ConversationHeader;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/motorola/messaging/view/ConversationHeaderView;->setWapPushIndicator(Ljava/lang/String;Z)V

    .line 250
    invoke-direct {p0}, Lcom/motorola/messaging/view/ConversationHeaderView;->updateBadge()V

    .line 253
    invoke-virtual {p2}, Lcom/motorola/messaging/conversation/ConversationHeader;->getContacts()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v0

    .line 254
    .local v0, "contacts":Lcom/motorola/messaging/contact/ContactList;
    invoke-virtual {v0, p0}, Lcom/motorola/messaging/contact/ContactList;->addListener(Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;)V

    .line 255
    invoke-static {}, Lcom/motorola/messaging/conversation/DraftCache;->getInstance()Lcom/motorola/messaging/conversation/DraftCache;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/motorola/messaging/conversation/DraftCache;->addOnDraftChangedListener(Lcom/motorola/messaging/conversation/DraftCache$OnDraftChangedListener;)V

    .line 256
    return-void

    .line 211
    .end local v0    # "contacts":Lcom/motorola/messaging/contact/ContactList;
    .end local v1    # "count":I
    :cond_0
    const v3, 0x7f02000a

    goto/16 :goto_0

    .line 225
    .restart local v1    # "count":I
    :cond_1
    iget-object v3, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v3, v5

    .line 241
    goto :goto_2

    :cond_3
    move v4, v5

    .line 244
    goto :goto_3
.end method

.method public onContactInvalidated(Lcom/motorola/messaging/contact/Contact;)V
    .locals 1
    .param p1, "contact"    # Lcom/motorola/messaging/contact/Contact;

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/motorola/messaging/contact/Contact;->refresh(Z)V

    .line 283
    return-void
.end method

.method public onContactUpdated(Lcom/motorola/messaging/contact/Contact;)V
    .locals 2
    .param p1, "contact"    # Lcom/motorola/messaging/contact/Contact;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/messaging/view/ConversationHeaderView$3;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/view/ConversationHeaderView$3;-><init>(Lcom/motorola/messaging/view/ConversationHeaderView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method

.method public onDraftChanged(JZ)V
    .locals 2
    .param p1, "threadId"    # J
    .param p3, "hasDraft"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mConversationHeader:Lcom/motorola/messaging/conversation/ConversationHeader;

    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/ConversationHeader;->getThreadId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mConversationHeader:Lcom/motorola/messaging/conversation/ConversationHeader;

    invoke-virtual {v0, p3}, Lcom/motorola/messaging/conversation/ConversationHeader;->updateDraft(Z)V

    .line 273
    iget-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/messaging/view/ConversationHeaderView$4;

    invoke-direct {v1, p0, p3}, Lcom/motorola/messaging/view/ConversationHeaderView$4;-><init>(Lcom/motorola/messaging/view/ConversationHeaderView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 96
    const v0, 0x7f090030

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mFromView:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mCountView:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mLastMessageTextView:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mDateView:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mDraftView:Landroid/view/View;

    .line 101
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBrowserMsgView:Landroid/view/View;

    .line 102
    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mErrorIndicator:Landroid/view/View;

    .line 103
    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBadge:Landroid/widget/QuickContactBadge;

    .line 104
    return-void
.end method

.method public setWapPushIndicator(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "recipient"    # Ljava/lang/String;
    .param p2, "hasUnreadMessages"    # Z

    .prologue
    const/16 v3, 0x8

    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, "icon":Landroid/widget/ImageView;
    const-string v1, "browser message"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 173
    sget-boolean v1, Lcom/motorola/messaging/view/ConversationHeaderView;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 174
    sget-object v1, Lcom/motorola/messaging/view/ConversationHeaderView;->TAG:Ljava/lang/String;

    const-string v2, "Wap Push msg"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBrowserMsgView:Landroid/view/View;

    const v2, 0x7f090037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "icon":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 178
    .restart local v0    # "icon":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 179
    if-eqz p2, :cond_1

    .line 180
    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBrowserMsgView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :goto_1
    return-void

    .line 182
    :cond_1
    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 186
    :cond_2
    sget-boolean v1, Lcom/motorola/messaging/view/ConversationHeaderView;->LOCAL_LOG:Z

    if-eqz v1, :cond_3

    .line 187
    sget-object v1, Lcom/motorola/messaging/view/ConversationHeaderView;->TAG:Ljava/lang/String;

    const-string v2, "WapPushMessage Icon not available"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_3
    iget-object v1, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBrowserMsgView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 192
    :cond_4
    iget-object v1, p0, Lcom/motorola/messaging/view/ConversationHeaderView;->mBrowserMsgView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
