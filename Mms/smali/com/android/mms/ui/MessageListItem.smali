.class public Lcom/android/mms/ui/MessageListItem;
.super Landroid/widget/LinearLayout;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mms/ui/SlideViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;
    }
.end annotation


# static fields
.field private static sDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAvatar:Lcom/android/mms/ui/QuickContactDivot;

.field private mBodyTextView:Landroid/widget/TextView;

.field mColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mDateView:Landroid/widget/TextView;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mDeliveredIndicator:Landroid/widget/ImageView;

.field private mDetailsIndicator:Landroid/widget/ImageView;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadingLabel:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

.field private mImageView:Landroid/widget/ImageView;

.field private mLockedIndicator:Landroid/widget/ImageView;

.field public mMessageBlock:Landroid/view/View;

.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mMmsView:Landroid/view/View;

.field private mMultiRecipients:Z

.field private mPosition:I

.field private mPresenter:Lcom/android/mms/ui/Presenter;

.field private mRejectButton:Landroid/widget/Button;

.field private mSlideShowButton:Landroid/widget/ImageButton;

.field private mSpan:Landroid/text/style/LineHeightSpan;

.field mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 575
    new-instance v0, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSpan:Landroid/text/style/LineHeightSpan;

    .line 583
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 121
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDefaultCountryIso:Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 126
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 575
    new-instance v1, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSpan:Landroid/text/style/LineHeightSpan;

    .line 583
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v3, 0x1030046

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

    .line 586
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 131
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 132
    .local v0, "color":I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 133
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDefaultCountryIso:Ljava/lang/String;

    .line 135
    sget-object v1, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 138
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRejectButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;
    .param p1, "x1"    # Lcom/android/mms/ui/MessageItem;
    .param p2, "x2"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;->sendMessage(Lcom/android/mms/ui/MessageItem;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageListItem;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindCommonMessage(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MessageListItem;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDefaultCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method private bindCommonMessage(Z)V
    .locals 13
    .param p1, "sameItem"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 344
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 353
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_9

    :cond_1
    const/4 v9, 0x1

    .line 362
    .local v9, "haveLoadedPdu":Z
    :goto_0
    if-eqz p1, :cond_2

    if-eqz v9, :cond_3

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v10

    .line 364
    .local v10, "isSelf":Z
    if-eqz v10, :cond_a

    move-object v7, v11

    .line 365
    .local v7, "addr":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v7, v10}, Lcom/android/mms/ui/MessageListItem;->updateAvatarView(Ljava/lang/String;Z)V

    .line 372
    .end local v7    # "addr":Ljava/lang/String;
    .end local v10    # "isSelf":Z
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v8

    .line 373
    .local v8, "formattedMessage":Ljava/lang/CharSequence;
    if-nez v8, :cond_4

    .line 374
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v6, v0, Lcom/android/mms/ui/MessageItem;->mPriority:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 380
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 382
    :cond_4
    if-eqz p1, :cond_5

    if-eqz v9, :cond_6

    .line 383
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :cond_6
    if-eqz p1, :cond_7

    if-eqz v9, :cond_8

    .line 407
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0119

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->buildTimestampLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 412
    invoke-direct {p0, v12}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 413
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessageItem;->setOnPduLoaded(Lcom/android/mms/ui/MessageItem$PduLoadedCallback;)V

    .line 478
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->drawRightStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    .line 480
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->requestLayout()V

    .line 481
    return-void

    .end local v8    # "formattedMessage":Ljava/lang/CharSequence;
    .end local v9    # "haveLoadedPdu":Z
    :cond_9
    move v9, v12

    .line 353
    goto :goto_0

    .line 364
    .restart local v9    # "haveLoadedPdu":Z
    .restart local v10    # "isSelf":Z
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    goto :goto_1

    .line 407
    .end local v10    # "isSelf":Z
    .restart local v8    # "formattedMessage":Ljava/lang/CharSequence;
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto :goto_2

    .line 421
    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-eqz v0, :cond_e

    .line 422
    if-nez p1, :cond_d

    .line 423
    invoke-virtual {p0, v11, v11, v11}, Lcom/android/mms/ui/MessageListItem;->setImage(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 425
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->setOnClickListener(Lcom/android/mms/ui/MessageItem;)V

    .line 426
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V

    .line 430
    :goto_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v0, :cond_f

    .line 431
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$3;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageItem;->setOnPduLoaded(Lcom/android/mms/ui/MessageItem$PduLoadedCallback;)V

    goto :goto_3

    .line 428
    :cond_e
    invoke-direct {p0, v12}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    goto :goto_4

    .line 447
    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-nez v0, :cond_10

    .line 448
    const-string v0, "MmsThumbnailPresenter"

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, v1, p0, v2}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    .line 455
    :goto_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    if-nez v0, :cond_11

    .line 456
    new-instance v0, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    .line 460
    :goto_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Presenter;->present(Lcom/android/mms/util/ItemLoadedCallback;)V

    goto :goto_3

    .line 452
    :cond_10
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Presenter;->setModel(Lcom/android/mms/model/Model;)V

    .line 453
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/Presenter;->setView(Lcom/android/mms/ui/ViewInterface;)V

    goto :goto_5

    .line 458
    :cond_11
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageLoadedCallback:Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->reset(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_6
.end method

.method private bindNotifInd()V
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/16 v14, 0x8

    const/4 v12, 0x0

    .line 215
    invoke-direct {p0, v12}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    add-int/lit16 v1, v1, 0x3ff

    div-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 221
    .local v10, "msgSizeText":Ljava/lang/String;
    iget-object v13, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget v6, v0, Lcom/android/mms/ui/MessageItem;->mPriority:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->buildTimestampLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMmsDownloadStatus()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 251
    :cond_0
    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 252
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 253
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v0, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsWapRejectEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setClickable(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRejectButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$2;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-direct {p0, v0, v12}, Lcom/android/mms/ui/MessageListItem;->updateAvatarView(Ljava/lang/String;Z)V

    .line 299
    return-void

    .line 232
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->showDownloadingAttachment()V

    goto :goto_0

    .line 236
    :sswitch_1
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v9

    .line 237
    .local v9, "downloadManager":Lcom/android/mms/util/DownloadManager;
    invoke-virtual {v9}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v7

    .line 238
    .local v7, "autoDownload":Z
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    move v8, v11

    .line 244
    .local v8, "dataSuspended":Z
    :goto_1
    if-eqz v7, :cond_0

    if-nez v8, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->showDownloadingAttachment()V

    goto :goto_0

    .end local v8    # "dataSuspended":Z
    :cond_2
    move v8, v12

    .line 238
    goto :goto_1

    .line 229
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x80 -> :sswitch_1
        0x81 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method

.method private buildTimestampLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mMultiRecipients:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    .end local p1    # "timestamp":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "timestamp":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0129

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 626
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 650
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 653
    :goto_0
    return-void

    .line 631
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 633
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 635
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 642
    new-instance v0, Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 626
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private drawRightStatusIndicator(Lcom/android/mms/ui/MessageItem;)V
    .locals 4
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 783
    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v0, :cond_3

    .line 784
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 785
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 795
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v0, v1, :cond_4

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 798
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 811
    :goto_1
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->INFO:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-eq v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v0, v1, :cond_6

    .line 814
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 815
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 819
    :goto_2
    return-void

    .line 787
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 799
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v0, v1, :cond_5

    .line 801
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 802
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 804
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 817
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private formatMessage(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "highlight"    # Ljava/util/regex/Pattern;
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "priority"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 591
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 593
    .local v0, "buf":Landroid/text/SpannableStringBuilder;
    const/4 v6, 0x2

    if-eq p6, v6, :cond_0

    const/16 v6, 0x82

    if-ne p6, v6, :cond_1

    .line 594
    :cond_0
    const-string v6, "x "

    invoke-virtual {v0, v5, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 595
    new-instance v3, Landroid/text/style/ImageSpan;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v7, 0x7f020033

    invoke-direct {v3, v6, v7, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 596
    .local v3, "mUrgentSpan":Landroid/text/style/ImageSpan;
    const/16 v6, 0x21

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 598
    .end local v3    # "mUrgentSpan":Landroid/text/style/ImageSpan;
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    move v1, v4

    .line 599
    .local v1, "hasSubject":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 600
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0020

    new-array v8, v4, [Ljava/lang/Object;

    aput-object p3, v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 603
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 605
    if-eqz p5, :cond_5

    const-string v6, "text/html"

    invoke-virtual {v6, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 606
    const-string v6, "\n"

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 607
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 616
    :cond_3
    :goto_1
    if-eqz p4, :cond_7

    .line 617
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 618
    .local v2, "m":Ljava/util/regex/Matcher;
    :goto_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 619
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {v0, v6, v7, v8, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .end local v1    # "hasSubject":Z
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_4
    move v1, v5

    .line 598
    goto :goto_0

    .line 609
    .restart local v1    # "hasSubject":Z
    :cond_5
    if-eqz v1, :cond_6

    .line 610
    const-string v6, " - "

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 612
    :cond_6
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 622
    :cond_7
    return-object v0
.end method

.method private inflateDownloadControls()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 567
    const v0, 0x7f0f004c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 568
    const v0, 0x7f0f004f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    .line 569
    const v0, 0x7f0f0050

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRejectButton:Landroid/widget/Button;

    .line 570
    const v0, 0x7f0f0051

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    .line 572
    :cond_0
    return-void
.end method

.method private sendMessage(Lcom/android/mms/ui/MessageItem;I)V
    .locals 2
    .param p1, "messageItem"    # Lcom/android/mms/ui/MessageItem;
    .param p2, "message"    # I

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 664
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 665
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 667
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setOnClickListener(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 754
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 776
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    :goto_0
    return-void

    .line 762
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$9;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListItem$9;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$10;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$10;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 754
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showDownloadingAttachment()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 312
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 313
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 316
    return-void
.end method

.method private showMmsView(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const v4, 0x7f0f0052

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 541
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 542
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    .line 545
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 547
    const v1, 0x7f0f004b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 548
    .local v0, "mmsStub":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 549
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    .line 552
    .end local v0    # "mmsStub":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 553
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 554
    const v1, 0x7f0f0053

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    .line 556
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_2

    .line 557
    const v1, 0x7f0f0054

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    .line 559
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz p1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 560
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    :cond_3
    return-void

    :cond_4
    move v1, v3

    .line 559
    goto :goto_0

    :cond_5
    move v2, v3

    .line 560
    goto :goto_1
.end method

.method private updateAvatarView(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "isSelf"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 320
    if-nez p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 321
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {v3}, Lcom/android/mms/data/Contact;->getMe(Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 322
    .local v1, "contact":Lcom/android/mms/data/Contact;
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 324
    .local v0, "avatarDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_2

    .line 325
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/QuickContactDivot;->assignContactUri(Landroid/net/Uri;)V

    .line 340
    .end local v1    # "contact":Lcom/android/mms/data/Contact;
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/QuickContactDivot;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    return-void

    .line 321
    .end local v0    # "avatarDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-static {p1, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    goto :goto_0

    .line 327
    .restart local v0    # "avatarDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "contact":Lcom/android/mms/data/Contact;
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 328
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/QuickContactDivot;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 330
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 331
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/QuickContactDivot;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_1

    .line 333
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/QuickContactDivot;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_1

    .line 338
    .end local v0    # "avatarDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "contact":Lcom/android/mms/data/Contact;
    :cond_5
    sget-object v0, Lcom/android/mms/ui/MessageListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .restart local v0    # "avatarDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/MessageItem;ZI)V
    .locals 6
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;
    .param p2, "convHasMultiRecipients"    # Z
    .param p3, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 160
    .local v0, "sameItem":Z
    :goto_0
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 162
    iput p3, p0, Lcom/android/mms/ui/MessageListItem;->mPosition:I

    .line 163
    iput-boolean p2, p0, Lcom/android/mms/ui/MessageListItem;->mMultiRecipients:Z

    .line 165
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 166
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    .line 171
    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    packed-switch v1, :pswitch_data_0

    .line 176
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->bindCommonMessage(Z)V

    .line 179
    :goto_1
    return-void

    .end local v0    # "sameItem":Z
    :cond_0
    move v0, v1

    .line 159
    goto :goto_0

    .line 173
    .restart local v0    # "sameItem":Z
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->bindNotifInd()V

    goto :goto_1

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch
.end method

.method public getMessageItem()Lcom/android/mms/ui/MessageItem;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessageListItem;->sendMessage(Lcom/android/mms/ui/MessageItem;I)V

    .line 659
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 144
    const v0, 0x7f0f0046

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0f0047

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0f0048

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockedIndicator:Landroid/widget/ImageView;

    .line 147
    const v0, 0x7f0f0049

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveredIndicator:Landroid/widget/ImageView;

    .line 148
    const v0, 0x7f0f004a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDetailsIndicator:Landroid/widget/ImageView;

    .line 149
    const v0, 0x7f0f0021

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/QuickContactDivot;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAvatar:Lcom/android/mms/ui/QuickContactDivot;

    .line 150
    const v0, 0x7f0f0045

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageBlock:Landroid/view/View;

    .line 151
    return-void
.end method

.method public onMessageListItemClick()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 672
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 678
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v4, v6}, Lcom/android/mms/ui/MessageListItem;->sendMessage(Lcom/android/mms/ui/MessageItem;I)V

    .line 751
    :goto_0
    return-void

    .line 683
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v3

    .line 685
    .local v3, "spans":[Landroid/text/style/URLSpan;
    array-length v4, v3

    if-nez v4, :cond_1

    .line 686
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/MessageListItem;->sendMessage(Lcom/android/mms/ui/MessageItem;I)V

    goto :goto_0

    .line 687
    :cond_1
    array-length v4, v3

    if-ne v4, v6, :cond_2

    .line 688
    const/4 v4, 0x0

    aget-object v4, v3, v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 690
    :cond_2
    new-instance v0, Lcom/android/mms/ui/MessageListItem$6;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v5, 0x1090011

    invoke-direct {v0, p0, v4, v5, v3}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;Landroid/content/Context;I[Landroid/text/style/URLSpan;)V

    .line 726
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/text/style/URLSpan;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 728
    .local v1, "b":Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;[Landroid/text/style/URLSpan;)V

    .line 738
    .local v2, "click":Landroid/content/DialogInterface$OnClickListener;
    const v4, 0x7f0a00ff

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 739
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 740
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 742
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 749
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 885
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 891
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 874
    return-void
.end method

.method public seekAudio(I)V
    .locals 0
    .param p1, "seekTo"    # I

    .prologue
    .line 897
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .param p1, "seekTo"    # I

    .prologue
    .line 903
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "audio"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 526
    .local p3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    return-void
.end method

.method public setImage(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 530
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 534
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    return-void

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "MessageListItem"

    const-string v2, "setImage: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .param p1, "fit"    # Ljava/lang/String;

    .prologue
    .line 824
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 829
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    .line 212
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 834
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 839
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 843
    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 847
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->showMmsView(Z)V

    .line 850
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 851
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :goto_0
    return-void

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "MessageListItem"

    const-string v2, "setVideo: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 860
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 516
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 521
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 865
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 870
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/Presenter;->cancelBackgroundLoading()V

    .line 197
    :cond_2
    return-void
.end method

.method public unbindViewReferences()V
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->unbind()V

    .line 201
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/Presenter;->unregisterObserver()V

    .line 204
    :cond_0
    return-void
.end method
