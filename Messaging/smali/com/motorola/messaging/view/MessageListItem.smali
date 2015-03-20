.class public Lcom/motorola/messaging/view/MessageListItem;
.super Landroid/widget/RelativeLayout;
.source "MessageListItem.java"

# interfaces
.implements Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;
.implements Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/view/MessageListItem$5;,
        Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;,
        Lcom/motorola/messaging/view/MessageListItem$MmsViewClickListener;
    }
.end annotation


# static fields
.field private static final LOCAL_LOG:Z


# instance fields
.field private mActivityHandler:Landroid/os/Handler;

.field private mAvatar:Lcom/motorola/messaging/view/QuickContactDivot;

.field private mBindAvatarRunnable:Ljava/lang/Runnable;

.field private mBindRunnable:Ljava/lang/Runnable;

.field private mBodyTextView:Lcom/motorola/messaging/view/LinkedTextView;

.field private mCallbackView:Lcom/motorola/messaging/view/LinkedTextView;

.field private mContact:Lcom/motorola/messaging/contact/Contact;

.field private mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;

.field private mDateView:Landroid/widget/TextView;

.field private mDeferredMmsLayout:Landroid/widget/LinearLayout;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadingLabel:Landroid/widget/TextView;

.field private mFromView:Landroid/widget/TextView;

.field private mGroupTypeIndicator:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mMessageBlock:Landroid/view/ViewGroup;

.field private mMmsView:Landroid/widget/ImageButton;

.field private mMmsViewClickListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewClickListener;

.field private mMmsViewCreateContextMenuListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProtectedIndicator:Landroid/widget/ImageView;

.field private mRejectButton:Landroid/widget/Button;

.field private mStatusIndicator:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/view/MessageListItem;->LOCAL_LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mHandler:Landroid/os/Handler;

    .line 603
    new-instance v0, Lcom/motorola/messaging/view/MessageListItem$3;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/view/MessageListItem$3;-><init>(Lcom/motorola/messaging/view/MessageListItem;)V

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mBindRunnable:Ljava/lang/Runnable;

    .line 623
    new-instance v0, Lcom/motorola/messaging/view/MessageListItem$4;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/view/MessageListItem$4;-><init>(Lcom/motorola/messaging/view/MessageListItem;)V

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mBindAvatarRunnable:Ljava/lang/Runnable;

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mHandler:Landroid/os/Handler;

    .line 603
    new-instance v0, Lcom/motorola/messaging/view/MessageListItem$3;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/view/MessageListItem$3;-><init>(Lcom/motorola/messaging/view/MessageListItem;)V

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mBindRunnable:Ljava/lang/Runnable;

    .line 623
    new-instance v0, Lcom/motorola/messaging/view/MessageListItem$4;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/view/MessageListItem$4;-><init>(Lcom/motorola/messaging/view/MessageListItem;)V

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mBindAvatarRunnable:Ljava/lang/Runnable;

    .line 163
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/motorola/messaging/view/MessageListItem;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageListItem;
    .param p1, "x1"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindFrom(Lcom/motorola/messaging/composer/MessageItem;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageListItem;
    .param p1, "x1"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindDate(Lcom/motorola/messaging/composer/MessageItem;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageListItem;
    .param p1, "x1"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindStatusIndicator(Lcom/motorola/messaging/composer/MessageItem;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageListItem;
    .param p1, "x1"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindProtectedIndicator(Lcom/motorola/messaging/composer/MessageItem;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageListItem;
    .param p1, "x1"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindGroupTypeIndicator(Lcom/motorola/messaging/composer/MessageItem;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageListItem;
    .param p1, "x1"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindMmsView(Lcom/motorola/messaging/composer/MessageItem;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageListItem;
    .param p1, "x1"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindDeferredMMSItems(Lcom/motorola/messaging/composer/MessageItem;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageListItem;
    .param p1, "x1"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindText(Lcom/motorola/messaging/composer/MessageItem;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageListItem;
    .param p1, "x1"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindAvatar(Lcom/motorola/messaging/composer/MessageItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/messaging/view/MessageListItem;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageListItem;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/messaging/view/MessageListItem;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageListItem;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/messaging/view/MessageListItem;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageListItem;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mRejectButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/messaging/view/MessageListItem;)Lcom/motorola/messaging/composer/MessageItem;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageListItem;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/messaging/view/MessageListItem;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageListItem;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/view/MessageListItem;->sendMessageToActivity(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/messaging/view/MessageListItem;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageListItem;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/messaging/view/MessageListItem;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageListItem;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mActivityHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageListItem;
    .param p1, "x1"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindCallbackNumber(Lcom/motorola/messaging/composer/MessageItem;)V

    return-void
.end method

.method private bindAvatar(Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 5
    .param p1, "msgItem"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, "avatarDrawable":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->isOutgoing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mAvatar:Lcom/motorola/messaging/view/QuickContactDivot;

    invoke-virtual {v1, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 306
    invoke-static {v4}, Lcom/motorola/messaging/contact/Contact;->getSelfAvatar(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 333
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mAvatar:Lcom/motorola/messaging/view/QuickContactDivot;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    return-void

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mContact:Lcom/motorola/messaging/contact/Contact;

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mContact:Lcom/motorola/messaging/contact/Contact;

    invoke-virtual {v1, p0}, Lcom/motorola/messaging/contact/Contact;->removeListener(Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;)V

    .line 311
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/motorola/messaging/contact/Contact;->get(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mContact:Lcom/motorola/messaging/contact/Contact;

    .line 312
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mContact:Lcom/motorola/messaging/contact/Contact;

    invoke-virtual {v1, p0}, Lcom/motorola/messaging/contact/Contact;->addListener(Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;)V

    .line 314
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mContact:Lcom/motorola/messaging/contact/Contact;

    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->isLocalNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mAvatar:Lcom/motorola/messaging/view/QuickContactDivot;

    invoke-virtual {v1, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 316
    invoke-static {}, Lcom/motorola/messaging/contact/Contact;->getSelfAvatar()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_2
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mContact:Lcom/motorola/messaging/contact/Contact;

    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mContact:Lcom/motorola/messaging/contact/Contact;

    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->existsInDatabase()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 321
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mAvatar:Lcom/motorola/messaging/view/QuickContactDivot;

    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem;->mContact:Lcom/motorola/messaging/contact/Contact;

    invoke-virtual {v2}, Lcom/motorola/messaging/contact/Contact;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 322
    :cond_3
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mContact:Lcom/motorola/messaging/contact/Contact;

    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->isOnlineAlbum()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 323
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mAvatar:Lcom/motorola/messaging/view/QuickContactDivot;

    invoke-virtual {v1, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 324
    :cond_4
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mContact:Lcom/motorola/messaging/contact/Contact;

    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->isEmail()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 325
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mAvatar:Lcom/motorola/messaging/view/QuickContactDivot;

    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem;->mContact:Lcom/motorola/messaging/contact/Contact;

    invoke-virtual {v2}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    .line 326
    :cond_5
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mContact:Lcom/motorola/messaging/contact/Contact;

    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->isMessagableNumber()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 327
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mAvatar:Lcom/motorola/messaging/view/QuickContactDivot;

    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem;->mContact:Lcom/motorola/messaging/contact/Contact;

    invoke-virtual {v2}, Lcom/motorola/messaging/contact/Contact;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    .line 329
    :cond_6
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mAvatar:Lcom/motorola/messaging/view/QuickContactDivot;

    invoke-virtual {v1, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method private bindBubble(Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 2
    .param p1, "msgItem"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mMessageBlock:Landroid/view/ViewGroup;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 264
    return-void
.end method

.method private bindCallbackNumber(Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 7
    .param p1, "msgItem"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    const/4 v6, 0x0

    .line 218
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsCallbackNumEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->getCallbackNumber()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "callbackNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem;->mCallbackView:Lcom/motorola/messaging/view/LinkedTextView;

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 221
    const v2, 0x7f090044

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 222
    .local v1, "stubRoot":Landroid/view/ViewStub;
    if-nez v1, :cond_1

    .line 223
    const-string v2, "MessageListItem"

    const-string v3, "Callback: Bind failed"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .end local v0    # "callbackNumber":Ljava/lang/String;
    .end local v1    # "stubRoot":Landroid/view/ViewStub;
    :cond_0
    :goto_0
    return-void

    .line 226
    .restart local v0    # "callbackNumber":Ljava/lang/String;
    .restart local v1    # "stubRoot":Landroid/view/ViewStub;
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/view/LinkedTextView;

    iput-object v2, p0, Lcom/motorola/messaging/view/MessageListItem;->mCallbackView:Lcom/motorola/messaging/view/LinkedTextView;

    .line 229
    .end local v1    # "stubRoot":Landroid/view/ViewStub;
    :cond_2
    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem;->mCallbackView:Lcom/motorola/messaging/view/LinkedTextView;

    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->isSendInProgress()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 232
    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem;->mCallbackView:Lcom/motorola/messaging/view/LinkedTextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem;->mCallbackView:Lcom/motorola/messaging/view/LinkedTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0015

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 235
    :cond_3
    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem;->mCallbackView:Lcom/motorola/messaging/view/LinkedTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindDate(Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 2
    .param p1, "msgItem"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 254
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->isSendInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mDateView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mDateView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindDeferredMMSItems(Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 6
    .param p1, "msgItem"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 390
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->isDownloaded()Z

    move-result v1

    if-nez v1, :cond_5

    .line 391
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDeferredMmsLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    .line 392
    const v1, 0x7f090048

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 393
    .local v0, "stubRoot":Landroid/view/ViewStub;
    if-nez v0, :cond_1

    .line 394
    const-string v1, "MessageListItem"

    const-string v2, "DeferredMMS: Bind failed"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .end local v0    # "stubRoot":Landroid/view/ViewStub;
    :cond_0
    :goto_0
    return-void

    .line 397
    .restart local v0    # "stubRoot":Landroid/view/ViewStub;
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090049

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDeferredMmsLayout:Landroid/widget/LinearLayout;

    .line 398
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDeferredMmsLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f09004b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    .line 399
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDeferredMmsLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f09004c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mRejectButton:Landroid/widget/Button;

    .line 400
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDeferredMmsLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    .line 403
    .end local v0    # "stubRoot":Landroid/view/ViewStub;
    :cond_2
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 404
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 490
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDeferredMmsLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-direct {p0, v1, v4}, Lcom/motorola/messaging/view/MessageListItem;->setViewBlocked(Landroid/view/View;Z)V

    .line 492
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mRejectButton:Landroid/widget/Button;

    invoke-direct {p0, v1, v4}, Lcom/motorola/messaging/view/MessageListItem;->setViewBlocked(Landroid/view/View;Z)V

    goto :goto_0

    .line 408
    :cond_4
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 411
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 412
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    new-instance v2, Lcom/motorola/messaging/view/MessageListItem$1;

    invoke-direct {v2, p0, p1}, Lcom/motorola/messaging/view/MessageListItem$1;-><init>(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsWapRejectEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 458
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 460
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 461
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mRejectButton:Landroid/widget/Button;

    new-instance v2, Lcom/motorola/messaging/view/MessageListItem$2;

    invoke-direct {v2, p0, p1}, Lcom/motorola/messaging/view/MessageListItem$2;-><init>(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/composer/MessageItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 484
    :cond_5
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDeferredMmsLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 485
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 487
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private bindFrom(Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 3
    .param p1, "msgItem"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 243
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->hasMultipleRecipients()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mFromView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .end local v0    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mFromView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindGroupTypeIndicator(Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 2
    .param p1, "msgItem"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 346
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->hasMultipleRecipients()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->isIndividualGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mGroupTypeIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    :goto_0
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mGroupTypeIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    :goto_1
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mGroupTypeIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mGroupTypeIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private bindMmsView(Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 4
    .param p1, "msgItem"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 358
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->isDownloaded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 359
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    invoke-direct {p0, v1, v3}, Lcom/motorola/messaging/view/MessageListItem;->setViewBlocked(Landroid/view/View;Z)V

    .line 387
    :cond_1
    return-void

    .line 363
    :cond_2
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->getType()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->getMmsMediaType()I

    move-result v1

    if-nez v1, :cond_4

    .line 365
    :cond_3
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 369
    :cond_4
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    if-nez v1, :cond_5

    .line 370
    const v1, 0x7f090041

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 371
    .local v0, "stubRoot":Landroid/view/View;
    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    .line 372
    new-instance v1, Lcom/motorola/messaging/view/MessageListItem$MmsViewClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/messaging/view/MessageListItem$MmsViewClickListener;-><init>(Lcom/motorola/messaging/view/MessageListItem;Lcom/motorola/messaging/view/MessageListItem$1;)V

    iput-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsViewClickListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewClickListener;

    .line 373
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsViewClickListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    new-instance v1, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;-><init>(Lcom/motorola/messaging/view/MessageListItem;)V

    iput-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsViewCreateContextMenuListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;

    .line 375
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsViewCreateContextMenuListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 377
    .end local v0    # "stubRoot":Landroid/view/View;
    :cond_5
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->setMmsImage(Lcom/motorola/messaging/composer/MessageItem;)V

    .line 378
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsViewClickListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewClickListener;

    invoke-virtual {v1, p1}, Lcom/motorola/messaging/view/MessageListItem$MmsViewClickListener;->setMessageItem(Lcom/motorola/messaging/composer/MessageItem;)V

    .line 379
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsViewCreateContextMenuListener:Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;

    invoke-virtual {v1, p1}, Lcom/motorola/messaging/view/MessageListItem$MmsViewCreateContextMenuListener;->setMessageItem(Lcom/motorola/messaging/composer/MessageItem;)V

    .line 380
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindProtectedIndicator(Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 2
    .param p1, "msgItem"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 337
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->isProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mProtectedIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 339
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mProtectedIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mProtectedIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindStatusIndicator(Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 3
    .param p1, "msgItem"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mStatusIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 268
    const-string v0, "MessageListItem"

    const-string v1, "StatusIndicator: Bind failed"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->isOutgoing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->isOutgoingNotSent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 278
    :cond_3
    sget-object v0, Lcom/motorola/messaging/view/MessageListItem$5;->$SwitchMap$com$motorola$messaging$composer$MessageItem$DELIVERY_STATUS:[I

    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->getDeliveryStatus()Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 294
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mStatusIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 282
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 286
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 290
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private bindText(Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 3
    .param p1, "msgItem"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    const/4 v0, 0x0

    .line 497
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mBodyTextView:Lcom/motorola/messaging/view/LinkedTextView;

    invoke-direct {p0, v1, v0}, Lcom/motorola/messaging/view/MessageListItem;->setViewBlocked(Landroid/view/View;Z)V

    .line 498
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mBodyTextView:Lcom/motorola/messaging/view/LinkedTextView;

    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->getBody()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mBodyTextView:Lcom/motorola/messaging/view/LinkedTextView;

    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->getBody()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    return-void
.end method

.method private sendMessageToActivity(ILjava/lang/Object;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 565
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mActivityHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mActivityHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 567
    .local v0, "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 568
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mActivityHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 570
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setMmsImage(Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 6
    .param p1, "msgItem"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    const/4 v5, 0x0

    .line 504
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->getMmsMediaType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 507
    :pswitch_0
    iget-object v4, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    const v5, 0x7f02001e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 510
    :pswitch_1
    iget-object v4, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    const v5, 0x7f02007f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 513
    :pswitch_2
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v2

    .line 514
    .local v2, "slide":Lcom/motorola/messaging/model/SlideModel;
    if-eqz v2, :cond_0

    .line 515
    invoke-virtual {v2}, Lcom/motorola/messaging/model/SlideModel;->getAudio()Lcom/motorola/messaging/model/AudioModel;

    move-result-object v0

    .line 516
    .local v0, "audio":Lcom/motorola/messaging/model/AudioModel;
    iget-object v4, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Lcom/motorola/messaging/model/AudioModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 521
    .end local v0    # "audio":Lcom/motorola/messaging/model/AudioModel;
    .end local v2    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :pswitch_3
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v2

    .line 522
    .restart local v2    # "slide":Lcom/motorola/messaging/model/SlideModel;
    if-eqz v2, :cond_0

    .line 523
    invoke-virtual {v2}, Lcom/motorola/messaging/model/SlideModel;->getImage()Lcom/motorola/messaging/model/ImageModel;

    move-result-object v1

    .line 524
    .local v1, "image":Lcom/motorola/messaging/model/ImageModel;
    iget-object v4, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Lcom/motorola/messaging/model/ImageModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 529
    .end local v1    # "image":Lcom/motorola/messaging/model/ImageModel;
    .end local v2    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :pswitch_4
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->getSmilModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v2

    .line 530
    .restart local v2    # "slide":Lcom/motorola/messaging/model/SlideModel;
    if-eqz v2, :cond_0

    .line 531
    invoke-virtual {v2}, Lcom/motorola/messaging/model/SlideModel;->getVideo()Lcom/motorola/messaging/model/VideoModel;

    move-result-object v3

    .line 532
    .local v3, "video":Lcom/motorola/messaging/model/VideoModel;
    iget-object v4, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Lcom/motorola/messaging/model/VideoModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 537
    .end local v2    # "slide":Lcom/motorola/messaging/model/SlideModel;
    .end local v3    # "video":Lcom/motorola/messaging/model/VideoModel;
    :pswitch_5
    iget-object v4, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    const v5, 0x7f020081

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 540
    :pswitch_6
    iget-object v4, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    const v5, 0x7f02007d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 543
    :pswitch_7
    iget-object v4, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    const v5, 0x7f020080

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 547
    :pswitch_8
    iget-object v4, p0, Lcom/motorola/messaging/view/MessageListItem;->mMmsView:Landroid/widget/ImageButton;

    const v5, 0x7f02007a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method private setViewBlocked(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isBlocked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 554
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 555
    if-nez p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 556
    if-nez p2, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 557
    return-void

    :cond_0
    move v0, v2

    .line 554
    goto :goto_0

    :cond_1
    move v0, v2

    .line 555
    goto :goto_1

    :cond_2
    move v1, v2

    .line 556
    goto :goto_2
.end method


# virtual methods
.method public bind(Lcom/motorola/messaging/composer/MessageItem;Z)V
    .locals 2
    .param p1, "msgItem"    # Lcom/motorola/messaging/composer/MessageItem;
    .param p2, "isLast"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;

    if-ne v0, p1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mContact:Lcom/motorola/messaging/contact/Contact;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mContact:Lcom/motorola/messaging/contact/Contact;

    invoke-virtual {v0, p0}, Lcom/motorola/messaging/contact/Contact;->addListener(Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v0, p0}, Lcom/motorola/messaging/composer/MessageItem;->clearListener(Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;)V

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mBindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    iput-object p1, p0, Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;

    .line 195
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v0, p0}, Lcom/motorola/messaging/composer/MessageItem;->setListener(Lcom/motorola/messaging/composer/MessageItem$MessageItemListener;)V

    .line 197
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindBubble(Lcom/motorola/messaging/composer/MessageItem;)V

    .line 198
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindDate(Lcom/motorola/messaging/composer/MessageItem;)V

    .line 199
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindText(Lcom/motorola/messaging/composer/MessageItem;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindAvatar(Lcom/motorola/messaging/composer/MessageItem;)V

    .line 202
    invoke-virtual {p1}, Lcom/motorola/messaging/composer/MessageItem;->isLoading()Z

    move-result v0

    if-nez v0, :cond_3

    .line 203
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindFrom(Lcom/motorola/messaging/composer/MessageItem;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindCallbackNumber(Lcom/motorola/messaging/composer/MessageItem;)V

    .line 205
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindStatusIndicator(Lcom/motorola/messaging/composer/MessageItem;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindProtectedIndicator(Lcom/motorola/messaging/composer/MessageItem;)V

    .line 207
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindGroupTypeIndicator(Lcom/motorola/messaging/composer/MessageItem;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindMmsView(Lcom/motorola/messaging/composer/MessageItem;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindDeferredMMSItems(Lcom/motorola/messaging/composer/MessageItem;)V

    .line 210
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 212
    :cond_3
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/MessageListItem;->bindMmsView(Lcom/motorola/messaging/composer/MessageItem;)V

    .line 213
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 782
    iget-object v6, p0, Lcom/motorola/messaging/view/MessageListItem;->mMessageBlock:Landroid/view/ViewGroup;

    .line 783
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_2

    .line 784
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v0

    .line 785
    .local v0, "l":F
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    add-float v5, v7, v8

    .line 786
    .local v5, "t":F
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float v4, v7, v8

    .line 788
    .local v4, "r":F
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 789
    .local v3, "path":Landroid/graphics/Path;
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 791
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 793
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 801
    invoke-virtual {v3, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 803
    iget-object v7, p0, Lcom/motorola/messaging/view/MessageListItem;->mAvatar:Lcom/motorola/messaging/view/QuickContactDivot;

    invoke-virtual {v7}, Lcom/motorola/messaging/view/QuickContactDivot;->getPosition()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 804
    iget-object v7, p0, Lcom/motorola/messaging/view/MessageListItem;->mAvatar:Lcom/motorola/messaging/view/QuickContactDivot;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v7, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 805
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 811
    :cond_0
    :goto_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 812
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 813
    .local v1, "lineColor":I
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 814
    const/high16 v7, 0x3f800000

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 815
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 816
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 820
    .end local v0    # "l":F
    .end local v1    # "lineColor":I
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v3    # "path":Landroid/graphics/Path;
    .end local v4    # "r":F
    .end local v5    # "t":F
    :goto_1
    return-void

    .line 806
    .restart local v0    # "l":F
    .restart local v3    # "path":Landroid/graphics/Path;
    .restart local v4    # "r":F
    .restart local v5    # "t":F
    :cond_1
    iget-object v7, p0, Lcom/motorola/messaging/view/MessageListItem;->mAvatar:Lcom/motorola/messaging/view/QuickContactDivot;

    invoke-virtual {v7}, Lcom/motorola/messaging/view/QuickContactDivot;->getPosition()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 807
    invoke-virtual {v3, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 808
    iget-object v7, p0, Lcom/motorola/messaging/view/MessageListItem;->mAvatar:Lcom/motorola/messaging/view/QuickContactDivot;

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 818
    .end local v0    # "l":F
    .end local v3    # "path":Landroid/graphics/Path;
    .end local v4    # "r":F
    .end local v5    # "t":F
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/16 v3, 0x1f4

    const/4 v5, 0x0

    .line 574
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 599
    :cond_0
    :goto_0
    return v5

    .line 579
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getBody()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 580
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 581
    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    :cond_2
    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem;->mCurrentMsgItem:Lcom/motorola/messaging/composer/MessageItem;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/MessageItem;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 587
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v3, :cond_4

    .line 588
    invoke-virtual {v0, v5, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "textToSpeak":Ljava/lang/String;
    :goto_1
    sget-boolean v2, Lcom/motorola/messaging/view/MessageListItem;->LOCAL_LOG:Z

    if-eqz v2, :cond_3

    .line 594
    const-string v2, "MessageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text to speak: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 590
    .end local v1    # "textToSpeak":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "textToSpeak":Ljava/lang/String;
    goto :goto_1
.end method

.method public onContactInvalidated(Lcom/motorola/messaging/contact/Contact;)V
    .locals 1
    .param p1, "contact"    # Lcom/motorola/messaging/contact/Contact;

    .prologue
    .line 829
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/motorola/messaging/contact/Contact;->refresh(Z)V

    .line 830
    return-void
.end method

.method public onContactUpdated(Lcom/motorola/messaging/contact/Contact;)V
    .locals 2
    .param p1, "contact"    # Lcom/motorola/messaging/contact/Contact;

    .prologue
    .line 824
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mBindAvatarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 825
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 169
    const v0, 0x7f090030

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mFromView:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/view/LinkedTextView;

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mBodyTextView:Lcom/motorola/messaging/view/LinkedTextView;

    .line 171
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mBodyTextView:Lcom/motorola/messaging/view/LinkedTextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 172
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mDateView:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mProtectedIndicator:Landroid/widget/ImageView;

    .line 174
    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mGroupTypeIndicator:Landroid/widget/ImageView;

    .line 175
    const v0, 0x7f09004a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mStatusIndicator:Landroid/widget/ImageView;

    .line 176
    const v0, 0x7f090040

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    .line 177
    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/view/QuickContactDivot;

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mAvatar:Lcom/motorola/messaging/view/QuickContactDivot;

    .line 178
    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageListItem;->mMessageBlock:Landroid/view/ViewGroup;

    .line 179
    return-void
.end method

.method public onUpdate(Lcom/motorola/messaging/composer/MessageItem;)V
    .locals 5
    .param p1, "item"    # Lcom/motorola/messaging/composer/MessageItem;

    .prologue
    .line 767
    const/4 v0, 0x0

    .line 768
    .local v0, "delay":I
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 771
    const/16 v0, 0xfa

    .line 773
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageListItem;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/motorola/messaging/view/MessageListItem;->mBindRunnable:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 774
    return-void
.end method

.method public setActivityHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "activityHandler"    # Landroid/os/Handler;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/motorola/messaging/view/MessageListItem;->mActivityHandler:Landroid/os/Handler;

    .line 561
    return-void
.end method
