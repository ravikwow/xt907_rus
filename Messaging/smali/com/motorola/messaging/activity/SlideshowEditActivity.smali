.class public Lcom/motorola/messaging/activity/SlideshowEditActivity;
.super Lcom/motorola/messaging/activity/MessagingListActivity;
.source "SlideshowEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;,
        Lcom/motorola/messaging/activity/SlideshowEditActivity$ListAdapter;,
        Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeVideoButtonListener;,
        Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageTask;,
        Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageButtonListener;,
        Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;
    }
.end annotation


# static fields
.field private static final LOCAL_LOG:Z


# instance fields
.field private mAddNewSlideOnReturn:Z

.field private mCaptionEditText:Landroid/widget/EditText;

.field private mComposerText:Ljava/lang/String;

.field private mDialogBundle:Landroid/os/Bundle;

.field private mInternalFinish:Z

.field private mList:Landroid/widget/ListView;

.field private final mListOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mMessageId:J

.field private mResizedVideoFileName:Ljava/lang/String;

.field private mSlideListAdapter:Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;

.field private mSlidePosition:I

.field private mSlideshowEditor:Lcom/motorola/messaging/slideshow/SlideshowEditor;

.field private mSmilModel:Lcom/motorola/messaging/model/SmilModel;

.field private mState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->LOCAL_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Lcom/motorola/messaging/activity/MessagingListActivity;-><init>()V

    .line 155
    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    .line 156
    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideshowEditor:Lcom/motorola/messaging/slideshow/SlideshowEditor;

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z

    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    .line 996
    new-instance v0, Lcom/motorola/messaging/activity/SlideshowEditActivity$3;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$3;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mListOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1489
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/activity/SlideshowEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowEditActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->commitSmilModelChanges()V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/messaging/activity/SlideshowEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowEditActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->isSlideshowModelEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/motorola/messaging/activity/SlideshowEditActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowEditActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mCaptionEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowEditActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->changeText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/messaging/activity/SlideshowEditActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowEditActivity;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addNewSlide(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/motorola/messaging/activity/SlideshowEditActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowEditActivity;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->editSlide(I)V

    return-void
.end method

.method static synthetic access$1402(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowEditActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mResizedVideoFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/motorola/messaging/activity/SlideshowEditActivity;)Lcom/motorola/messaging/model/SmilModel;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowEditActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/messaging/activity/SlideshowEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowEditActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->setFocusAndSelectionOnList()V

    return-void
.end method

.method static synthetic access$402(Lcom/motorola/messaging/activity/SlideshowEditActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowEditActivity;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/motorola/messaging/activity/SlideshowEditActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowEditActivity;

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mMessageId:J

    return-wide v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/motorola/messaging/activity/SlideshowEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowEditActivity;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z

    return v0
.end method

.method static synthetic access$702(Lcom/motorola/messaging/activity/SlideshowEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z

    return p1
.end method

.method static synthetic access$800(Lcom/motorola/messaging/activity/SlideshowEditActivity;ILandroid/net/Uri;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowEditActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Z

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMediaFromUri(ILandroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/motorola/messaging/activity/SlideshowEditActivity;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowEditActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method private addAudio(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/UnsupportContentTypeException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 849
    sget-boolean v0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 850
    const-string v0, "SlideshowEditActvy"

    const-string v1, "addAudio"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideshowEditor:Lcom/motorola/messaging/slideshow/SlideshowEditor;

    iget v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/messaging/slideshow/SlideshowEditor;->changeAudio(ILandroid/net/Uri;)V

    .line 854
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideListAdapter:Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 855
    return-void
.end method

.method private addImage(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    const v6, 0x7f0b00ef

    const/4 v5, 0x1

    const/4 v2, -0x6

    .line 759
    sget-boolean v3, Lcom/motorola/messaging/activity/SlideshowEditActivity;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 760
    const-string v3, "SlideshowEditActvy"

    const-string v4, "addImage"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideshowEditor:Lcom/motorola/messaging/slideshow/SlideshowEditor;

    iget v4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    invoke-virtual {v3, v4, p1}, Lcom/motorola/messaging/slideshow/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 765
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideListAdapter:Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v3}, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Lcom/motorola/messaging/model/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/messaging/model/ResolutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/motorola/messaging/model/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_3

    .line 793
    :goto_0
    return-void

    .line 766
    :catch_0
    move-exception v1

    .line 767
    .local v1, "e":Lcom/motorola/messaging/model/UnsupportContentTypeException;
    const-string v3, "SlideshowEditActvy"

    const-string v4, "add image failed"

    invoke-static {v3, v4, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 768
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v4, "error_media_type"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 769
    instance-of v3, v1, Lcom/motorola/messaging/model/RestrictedModeException;

    if-eqz v3, :cond_1

    const/16 v0, 0xa

    .line 771
    .local v0, "dialog":I
    :goto_1
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 772
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->removeSlideIfEmpty()Z

    goto :goto_0

    .line 769
    .end local v0    # "dialog":I
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 773
    .end local v1    # "e":Lcom/motorola/messaging/model/UnsupportContentTypeException;
    :catch_1
    move-exception v1

    .line 774
    .local v1, "e":Lcom/motorola/messaging/model/ResolutionException;
    const-string v3, "SlideshowEditActvy"

    const-string v4, "Image needs resizing (dimensions)"

    invoke-static {v3, v4, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 775
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v4, "resize_image_uri"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 776
    instance-of v3, v1, Lcom/motorola/messaging/model/RestrictedModeException;

    if-eqz v3, :cond_2

    .line 778
    .local v2, "reason":I
    :goto_2
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v4, "reason"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 779
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v5, v3}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 776
    .end local v2    # "reason":I
    :cond_2
    const/4 v2, -0x4

    goto :goto_2

    .line 780
    .end local v1    # "e":Lcom/motorola/messaging/model/ResolutionException;
    :catch_2
    move-exception v1

    .line 781
    .local v1, "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    const-string v3, "SlideshowEditActvy"

    const-string v4, "Image needs resizing (byte size)"

    invoke-static {v3, v4, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 782
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v4, "resize_image_uri"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 783
    instance-of v3, v1, Lcom/motorola/messaging/model/RestrictedModeException;

    if-eqz v3, :cond_3

    .line 785
    .restart local v2    # "reason":I
    :goto_3
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v4, "reason"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 786
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v5, v3}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 783
    .end local v2    # "reason":I
    :cond_3
    const/4 v2, -0x2

    goto :goto_3

    .line 787
    .end local v1    # "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    :catch_3
    move-exception v1

    .line 788
    .local v1, "e":Lcom/motorola/messaging/model/ContentRestrictionException;
    const-string v3, "SlideshowEditActvy"

    const-string v4, "add image failed"

    invoke-static {v3, v4, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 789
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v4, "error_media_type"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 790
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 791
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->removeSlideIfEmpty()Z

    goto :goto_0
.end method

.method private addMedia(IZZ)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "existingMedia"    # Z
    .param p3, "addNewSlide"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 882
    sget-boolean v1, Lcom/motorola/messaging/activity/SlideshowEditActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 883
    const-string v1, "SlideshowEditActvy"

    const-string v2, "addMedia"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :cond_0
    if-eqz p3, :cond_2

    .line 887
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->canAddSlide()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    iput-boolean v5, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z

    .line 898
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 944
    :goto_1
    return-void

    .line 891
    :cond_1
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->showCannotAddSlideToast()V

    goto :goto_1

    .line 895
    :cond_2
    iput-boolean v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z

    goto :goto_0

    .line 900
    :pswitch_0
    if-eqz p2, :cond_3

    .line 901
    const-string v1, "image/*"

    invoke-static {v1}, Lcom/motorola/messaging/util/MessageUtils;->getMediaIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 903
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v3}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 906
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 907
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "output"

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms$ScrapSpace;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 908
    invoke-virtual {p0, v0, v5}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 912
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    if-eqz p2, :cond_4

    .line 913
    const-string v1, "video/*"

    invoke-static {v1}, Lcom/motorola/messaging/util/MessageUtils;->getMediaIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 915
    .restart local v0    # "intent":Landroid/content/Intent;
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 917
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    sget-object v1, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v2}, Lcom/motorola/messaging/model/SmilModel;->getNonTextMediaSize()I

    move-result v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/util/MessageUtils;->getRecordVideoIntent(Lcom/motorola/messaging/model/Model$CreationMode;I)Landroid/content/Intent;

    move-result-object v0

    .line 919
    .restart local v0    # "intent":Landroid/content/Intent;
    if-nez v0, :cond_5

    .line 920
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v2, "error_media_type"

    const v3, 0x7f0b00f0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 921
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v4, v1}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 923
    :cond_5
    invoke-virtual {p0, v0, v4}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 928
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    if-eqz p2, :cond_6

    .line 929
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Lcom/motorola/messaging/util/MessageUtils;->getMediaIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 931
    .restart local v0    # "intent":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 933
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    sget-object v1, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v2}, Lcom/motorola/messaging/model/SmilModel;->getNonTextMediaSize()I

    move-result v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/util/MessageUtils;->getRecordSoundIntent(Lcom/motorola/messaging/model/Model$CreationMode;I)Landroid/content/Intent;

    move-result-object v0

    .line 935
    .restart local v0    # "intent":Landroid/content/Intent;
    if-nez v0, :cond_7

    .line 936
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v2, "error_media_type"

    const v3, 0x7f0b00ee

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 937
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v4, v1}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 939
    :cond_7
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/activity/MessagingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 898
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private addMediaFromUri(ILandroid/net/Uri;Z)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "addSlide"    # Z

    .prologue
    const/16 v0, 0xa

    const/4 v7, 0x3

    .line 658
    if-nez p2, :cond_0

    .line 739
    :goto_0
    return-void

    .line 662
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z

    .line 664
    const-string v2, ""

    .line 665
    .local v2, "media":Ljava/lang/String;
    const v3, 0x7f0b00f1

    .line 670
    .local v3, "resource":I
    packed-switch p1, :pswitch_data_0

    .line 685
    :goto_1
    if-eqz p3, :cond_2

    .line 686
    :try_start_0
    sget-boolean v4, Lcom/motorola/messaging/activity/SlideshowEditActivity;->LOCAL_LOG:Z

    if-eqz v4, :cond_1

    .line 687
    const-string v4, "SlideshowEditActvy"

    const-string v5, "addNewSlide() called"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_1
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addNewSlide()Z

    .line 692
    :cond_2
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 694
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/motorola/messaging/model/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/motorola/messaging/model/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 703
    :catch_0
    move-exception v1

    .line 707
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "SlideshowEditActvy"

    const-string v5, "mSlideshowEditor.changeImage() failed"

    invoke-static {v4, v5, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 708
    const-string v4, "SlideshowEditActvy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v6}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v5, "error_media_type"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 710
    iget-object v4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v7, v4}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 711
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->removeSlideIfEmpty()Z

    goto :goto_0

    .line 672
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :pswitch_1
    const v3, 0x7f0b00ef

    .line 673
    :try_start_1
    const-string v2, "picture"

    .line 674
    goto :goto_1

    .line 676
    :pswitch_2
    const v3, 0x7f0b00ee

    .line 677
    const-string v2, "audio"

    .line 678
    goto :goto_1

    .line 680
    :pswitch_3
    const v3, 0x7f0b00f0

    .line 681
    const-string v2, "video"

    goto :goto_1

    .line 697
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addAudio(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/motorola/messaging/model/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/motorola/messaging/model/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 712
    :catch_1
    move-exception v1

    .line 713
    .local v1, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v4, "SlideshowEditActvy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 714
    iget-object v4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v5, "error_media_type"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 715
    iget-object v4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v7, v4}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 716
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->removeSlideIfEmpty()Z

    goto/16 :goto_0

    .line 700
    .end local v1    # "e":Lcom/motorola/messaging/util/MmsException;
    :pswitch_5
    :try_start_2
    invoke-direct {p0, p2}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addVideo(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/motorola/messaging/model/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/motorola/messaging/model/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 717
    :catch_2
    move-exception v1

    .line 718
    .local v1, "e":Lcom/motorola/messaging/model/UnsupportContentTypeException;
    const-string v4, "SlideshowEditActvy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 719
    iget-object v4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v5, "error_media_type"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 720
    instance-of v4, v1, Lcom/motorola/messaging/model/RestrictedModeUnsupportedContentException;

    if-eqz v4, :cond_3

    .line 723
    .local v0, "dialog":I
    :goto_2
    iget-object v4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 724
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->removeSlideIfEmpty()Z

    goto/16 :goto_0

    .line 720
    .end local v0    # "dialog":I
    :cond_3
    const/4 v0, 0x4

    goto :goto_2

    .line 725
    .end local v1    # "e":Lcom/motorola/messaging/model/UnsupportContentTypeException;
    :catch_3
    move-exception v1

    .line 726
    .local v1, "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    const-string v4, "SlideshowEditActvy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed (size)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 727
    iget-object v4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v5, "error_media_type"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 728
    instance-of v4, v1, Lcom/motorola/messaging/model/RestrictedModeExceedSizeException;

    if-eqz v4, :cond_4

    .line 731
    .restart local v0    # "dialog":I
    :goto_3
    iget-object v4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 732
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->removeSlideIfEmpty()Z

    goto/16 :goto_0

    .line 728
    .end local v0    # "dialog":I
    :cond_4
    const/4 v0, 0x5

    goto :goto_3

    .line 733
    .end local v1    # "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    :catch_4
    move-exception v1

    .line 734
    .local v1, "e":Lcom/motorola/messaging/model/ContentRestrictionException;
    const-string v4, "SlideshowEditActvy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 735
    iget-object v4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v5, "error_media_type"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 736
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v4, v5}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 737
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->removeSlideIfEmpty()Z

    goto/16 :goto_0

    .line 670
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 692
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private addNewSlide(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 505
    packed-switch p1, :pswitch_data_0

    .line 532
    :goto_0
    return-void

    .line 507
    :pswitch_0
    invoke-direct {p0, v0, v0, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMedia(IZZ)V

    goto :goto_0

    .line 511
    :pswitch_1
    invoke-direct {p0, v0, v1, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMedia(IZZ)V

    goto :goto_0

    .line 515
    :pswitch_2
    invoke-direct {p0, v3, v0, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMedia(IZZ)V

    goto :goto_0

    .line 519
    :pswitch_3
    invoke-direct {p0, v3, v1, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMedia(IZZ)V

    goto :goto_0

    .line 523
    :pswitch_4
    invoke-direct {p0, v2, v0, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMedia(IZZ)V

    goto :goto_0

    .line 527
    :pswitch_5
    invoke-direct {p0, v2, v1, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMedia(IZZ)V

    goto :goto_0

    .line 505
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private addNewSlide()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ExceedMessageSizeException;
        }
    .end annotation

    .prologue
    .line 567
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideshowEditor:Lcom/motorola/messaging/slideshow/SlideshowEditor;

    invoke-virtual {v0}, Lcom/motorola/messaging/slideshow/SlideshowEditor;->addNewSlide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v0}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    .line 570
    const/4 v0, 0x1

    .line 573
    :goto_0
    return v0

    .line 572
    :cond_0
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->showCannotAddSlideToast()V

    .line 573
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addNewSlideIfNeeded()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ExceedMessageSizeException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mComposerText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v0}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addNewSlide()Z

    .line 312
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideshowEditor:Lcom/motorola/messaging/slideshow/SlideshowEditor;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mComposerText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/slideshow/SlideshowEditor;->changeText(ILjava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideListAdapter:Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 315
    :cond_0
    return-void
.end method

.method private addVideo(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/UnsupportContentTypeException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    const v5, 0x7f0b00f0

    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 797
    sget-boolean v3, Lcom/motorola/messaging/activity/SlideshowEditActivity;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 798
    const-string v3, "SlideshowEditActvy"

    const-string v4, "addVideo"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideshowEditor:Lcom/motorola/messaging/slideshow/SlideshowEditor;

    iget v4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    invoke-virtual {v3, v4, p1}, Lcom/motorola/messaging/slideshow/SlideshowEditor;->changeVideo(ILandroid/net/Uri;)V

    .line 803
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideListAdapter:Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v3}, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Lcom/motorola/messaging/model/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/messaging/model/ResolutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/motorola/messaging/model/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_3

    .line 845
    :goto_0
    return-void

    .line 804
    :catch_0
    move-exception v1

    .line 805
    .local v1, "e":Lcom/motorola/messaging/model/UnsupportContentTypeException;
    const-string v3, "SlideshowEditActvy"

    const-string v4, "add video failed"

    invoke-static {v3, v4, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 806
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v4, "error_media_type"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 807
    instance-of v3, v1, Lcom/motorola/messaging/model/RestrictedModeUnsupportedContentException;

    if-eqz v3, :cond_1

    const/16 v0, 0xa

    .line 809
    .local v0, "dialog":I
    :goto_1
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 810
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->removeSlideIfEmpty()Z

    goto :goto_0

    .line 807
    .end local v0    # "dialog":I
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 811
    .end local v1    # "e":Lcom/motorola/messaging/model/UnsupportContentTypeException;
    :catch_1
    move-exception v1

    .line 813
    .local v1, "e":Lcom/motorola/messaging/model/ResolutionException;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    iget-object v5, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v5}, Lcom/motorola/messaging/model/SmilModel;->getNonTextMediaSize()I

    move-result v5

    invoke-static {v3, p1, v4, v5}, Lcom/motorola/messaging/model/VideoResizingUtils;->getEditVideoIntent(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/motorola/messaging/model/Model$CreationMode;I)Landroid/content/Intent;

    move-result-object v2

    .line 815
    .local v2, "resizeVideoIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsVideoResizeEnabled()Z

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/motorola/messaging/util/MessageUtils;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 818
    const-string v3, "SlideshowEditActvy"

    const-string v4, "Video needs resizing (dimensions)"

    invoke-static {v3, v4, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 819
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v4, "resize_video_intent"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 820
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v7, v3}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 823
    :cond_2
    new-instance v3, Lcom/motorola/messaging/model/ResolutionException;

    const-string v4, "video resolution exceeds restriction and resize is disabled"

    invoke-direct {v3, v4}, Lcom/motorola/messaging/model/ResolutionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 825
    .end local v1    # "e":Lcom/motorola/messaging/model/ResolutionException;
    .end local v2    # "resizeVideoIntent":Landroid/content/Intent;
    :catch_2
    move-exception v1

    .line 827
    .local v1, "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    iget-object v5, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v5}, Lcom/motorola/messaging/model/SmilModel;->getNonTextMediaSize()I

    move-result v5

    invoke-static {v3, p1, v4, v5}, Lcom/motorola/messaging/model/VideoResizingUtils;->getEditVideoIntent(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/motorola/messaging/model/Model$CreationMode;I)Landroid/content/Intent;

    move-result-object v2

    .line 829
    .restart local v2    # "resizeVideoIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsVideoResizeEnabled()Z

    move-result v3

    if-ne v3, v6, :cond_3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/motorola/messaging/util/MessageUtils;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 832
    const-string v3, "SlideshowEditActvy"

    const-string v4, "Video needs resizing (size)"

    invoke-static {v3, v4, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v4, "resize_video_intent"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 834
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v7, v3}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 837
    :cond_3
    new-instance v3, Lcom/motorola/messaging/model/ExceedMessageSizeException;

    const-string v4, "video exceed message size limitation and resize is disabled"

    invoke-direct {v3, v4}, Lcom/motorola/messaging/model/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 839
    .end local v1    # "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    .end local v2    # "resizeVideoIntent":Landroid/content/Intent;
    :catch_3
    move-exception v1

    .line 840
    .local v1, "e":Lcom/motorola/messaging/model/ContentRestrictionException;
    const-string v3, "SlideshowEditActvy"

    const-string v4, "add video failed"

    invoke-static {v3, v4, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 841
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v4, "error_media_type"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 842
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 843
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->removeSlideIfEmpty()Z

    goto/16 :goto_0
.end method

.method private canAddSlide()Z
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideshowEditor:Lcom/motorola/messaging/slideshow/SlideshowEditor;

    invoke-virtual {v0}, Lcom/motorola/messaging/slideshow/SlideshowEditor;->canAddSlide()Z

    move-result v0

    return v0
.end method

.method private changeText(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 742
    const-string v1, "text"

    .line 745
    .local v1, "media":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideshowEditor:Lcom/motorola/messaging/slideshow/SlideshowEditor;

    iget v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    invoke-virtual {v2, v3, p1}, Lcom/motorola/messaging/slideshow/SlideshowEditor;->changeText(ILjava/lang/String;)V

    .line 746
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->removeSlideIfEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 748
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideListAdapter:Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v2}, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Lcom/motorola/messaging/model/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    const-string v2, "SlideshowEditActvy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 752
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v3, "error_media_type"

    const v4, 0x7f0b00f1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 753
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 754
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->removeSlideIfEmpty()Z

    goto :goto_0
.end method

.method private commitSmilModelChanges()V
    .locals 3

    .prologue
    .line 535
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 536
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v2, v0}, Lcom/motorola/messaging/model/SmilModel;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 537
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 538
    .local v1, "resultIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 539
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 541
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->internalFinish()V

    .line 542
    return-void
.end method

.method private editSlide(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 455
    packed-switch p1, :pswitch_data_0

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 457
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v1, "edit_text_position"

    iget v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 462
    :pswitch_1
    iget v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v1}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideshowEditor:Lcom/motorola/messaging/slideshow/SlideshowEditor;

    iget v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/slideshow/SlideshowEditor;->moveSlideUp(I)V

    .line 464
    iget v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    .line 465
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideListAdapter:Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 469
    :pswitch_2
    iget v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v1}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideshowEditor:Lcom/motorola/messaging/slideshow/SlideshowEditor;

    iget v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/slideshow/SlideshowEditor;->moveSlideDown(I)V

    .line 471
    iget v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    .line 472
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideListAdapter:Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 476
    :pswitch_3
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->slidePositionWithinListRange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->removeSlide()V

    goto :goto_0

    .line 481
    :pswitch_4
    invoke-direct {p0, v1, v1, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMedia(IZZ)V

    goto :goto_0

    .line 484
    :pswitch_5
    invoke-direct {p0, v1, v0, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMedia(IZZ)V

    goto :goto_0

    .line 487
    :pswitch_6
    invoke-direct {p0, v3, v1, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMedia(IZZ)V

    goto :goto_0

    .line 491
    :pswitch_7
    invoke-direct {p0, v3, v0, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMedia(IZZ)V

    goto :goto_0

    .line 495
    :pswitch_8
    invoke-direct {p0, v2, v1, v1}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMedia(IZZ)V

    goto :goto_0

    .line 499
    :pswitch_9
    invoke-direct {p0, v2, v0, v1}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMedia(IZZ)V

    goto :goto_0

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private getOptionsBasedOnPosition(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1007
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    .line 1010
    if-ltz p1, :cond_5

    if-ge p1, v1, :cond_5

    .line 1012
    iput p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    .line 1014
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    iget v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    invoke-virtual {v2, v3}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v2

    .line 1015
    invoke-virtual {v2}, Lcom/motorola/messaging/model/SlideModel;->hasVideo()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1017
    invoke-virtual {v2}, Lcom/motorola/messaging/model/SlideModel;->hasImage()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1019
    new-instance v3, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;

    const v4, 0x7f0b00df

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v3, p0, v4, v5}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1020
    new-instance v3, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;

    const v4, 0x7f0b00e0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct {v3, p0, v4, v5}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    :cond_0
    invoke-virtual {v2}, Lcom/motorola/messaging/model/SlideModel;->hasAudio()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1024
    new-instance v3, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;

    const v4, 0x7f0b00e1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-direct {v3, p0, v4, v5}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    new-instance v3, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;

    const v4, 0x7f0b00e2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    invoke-direct {v3, p0, v4, v5}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    :cond_1
    invoke-virtual {v2}, Lcom/motorola/messaging/model/SlideModel;->hasAudio()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/motorola/messaging/model/SlideModel;->hasImage()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1029
    new-instance v2, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;

    const v3, 0x7f0b00e3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-direct {v2, p0, v3, v4}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    new-instance v2, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;

    const v3, 0x7f0b00e4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    invoke-direct {v2, p0, v3, v4}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1034
    :cond_2
    new-instance v2, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;

    const v3, 0x7f0b0077

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, p0, v3, v4}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    if-lez p1, :cond_3

    .line 1037
    new-instance v2, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;

    const v3, 0x7f0b0037

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    :cond_3
    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_4

    .line 1041
    new-instance v1, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;

    const v2, 0x7f0b0038

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    :cond_4
    new-instance v1, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;

    const v2, 0x7f0b0039

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    :cond_5
    return-object v0
.end method

.method private hasText(Lcom/motorola/messaging/model/SlideModel;)Z
    .locals 2
    .param p1, "slideModel"    # Lcom/motorola/messaging/model/SlideModel;

    .prologue
    const/4 v0, 0x0

    .line 352
    invoke-virtual {p1}, Lcom/motorola/messaging/model/SlideModel;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {p1}, Lcom/motorola/messaging/model/SlideModel;->getText()Lcom/motorola/messaging/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 356
    :cond_0
    return v0
.end method

.method private initSlideList()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Lcom/motorola/messaging/slideshow/SlideshowEditor;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-direct {v0, p0, v1}, Lcom/motorola/messaging/slideshow/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/SmilModel;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideshowEditor:Lcom/motorola/messaging/slideshow/SlideshowEditor;

    .line 319
    new-instance v0, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;

    const v1, 0x7f030022

    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Landroid/content/Context;ILcom/motorola/messaging/model/SmilModel;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideListAdapter:Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;

    .line 321
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideListAdapter:Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 322
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mListOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 325
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->isSlideshowModelEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideshowEditor:Lcom/motorola/messaging/slideshow/SlideshowEditor;

    invoke-virtual {v0}, Lcom/motorola/messaging/slideshow/SlideshowEditor;->removeAllSlides()V

    .line 328
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideListAdapter:Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 330
    :cond_0
    return-void
.end method

.method private internalFinish()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mInternalFinish:Z

    .line 267
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 268
    return-void
.end method

.method private isProgressDialog(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1147
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSlideshowModelEmpty()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 334
    sget-boolean v3, Lcom/motorola/messaging/activity/SlideshowEditActivity;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 335
    const-string v3, "SlideshowEditActvy"

    const-string v4, "isSlideshowModelEmpty"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_0
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v3}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 348
    :cond_1
    :goto_0
    return v1

    .line 342
    :cond_2
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v3}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 344
    iget-object v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v3, v2}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v0

    .line 345
    .local v0, "slideModel":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->hasImage()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->hasAudio()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->hasVideo()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->hasText(Lcom/motorola/messaging/model/SlideModel;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "slideModel":Lcom/motorola/messaging/model/SlideModel;
    :cond_4
    move v1, v2

    .line 348
    goto :goto_0
.end method

.method private onCreateAlertDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1151
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1154
    packed-switch p1, :pswitch_data_0

    .line 1248
    :goto_0
    return-object v0

    .line 1156
    :pswitch_0
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mCaptionEditText:Landroid/widget/EditText;

    .line 1157
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mCaptionEditText:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1158
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mCaptionEditText:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/motorola/messaging/util/MessageUtils;->initEditorFromSystemSettings(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 1159
    const-string v0, " "

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1160
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mCaptionEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1162
    const v0, 0x104000a

    new-instance v2, Lcom/motorola/messaging/activity/SlideshowEditActivity$4;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$4;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1169
    const v0, 0x7f0b007b

    new-instance v2, Lcom/motorola/messaging/activity/SlideshowEditActivity$5;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$5;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1175
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1179
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mCaptionEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/motorola/messaging/activity/SlideshowEditActivity$6;

    invoke-direct {v3, p0, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$6;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1237
    :goto_1
    if-nez v0, :cond_0

    .line 1238
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1241
    :cond_0
    new-instance v1, Lcom/motorola/messaging/activity/SlideshowEditActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/motorola/messaging/activity/SlideshowEditActivity$7;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto :goto_0

    .line 1188
    :pswitch_1
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1189
    invoke-static {v1, v2}, Lcom/motorola/messaging/util/MessageUtils;->fillBuilderForPictureResizeDialog(Landroid/app/AlertDialog$Builder;I)V

    goto :goto_1

    .line 1192
    :pswitch_2
    invoke-static {v1, p0}, Lcom/motorola/messaging/util/MessageUtils;->fillBuilderForLocationWarningDialog(Landroid/app/AlertDialog$Builder;Landroid/content/Context;)V

    goto :goto_1

    .line 1195
    :pswitch_3
    const/4 v2, -0x1

    const-string v3, "error_media_type"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Lcom/motorola/messaging/util/MessageUtils;->fillErrorDialogBuilder(Landroid/content/Context;Landroid/app/AlertDialog$Builder;II)V

    goto :goto_1

    .line 1199
    :pswitch_4
    const/4 v2, -0x3

    const-string v3, "error_media_type"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Lcom/motorola/messaging/util/MessageUtils;->fillErrorDialogBuilder(Landroid/content/Context;Landroid/app/AlertDialog$Builder;II)V

    goto :goto_1

    .line 1203
    :pswitch_5
    const/4 v2, -0x6

    const-string v3, "error_media_type"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Lcom/motorola/messaging/util/MessageUtils;->fillErrorDialogBuilder(Landroid/content/Context;Landroid/app/AlertDialog$Builder;II)V

    goto :goto_1

    .line 1207
    :pswitch_6
    const/4 v2, -0x2

    const-string v3, "error_media_type"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Lcom/motorola/messaging/util/MessageUtils;->fillErrorDialogBuilder(Landroid/content/Context;Landroid/app/AlertDialog$Builder;II)V

    goto :goto_1

    .line 1211
    :pswitch_7
    const/4 v2, -0x4

    const-string v3, "error_media_type"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Lcom/motorola/messaging/util/MessageUtils;->fillErrorDialogBuilder(Landroid/content/Context;Landroid/app/AlertDialog$Builder;II)V

    goto :goto_1

    .line 1215
    :pswitch_8
    invoke-static {v1}, Lcom/motorola/messaging/util/MessageUtils;->fillBuilderForVideoResizeDialog(Landroid/app/AlertDialog$Builder;)V

    goto :goto_1

    .line 1218
    :pswitch_9
    const-string v2, "video_resize_error"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/motorola/messaging/util/MessageUtils;->fillBuilderForVideoResizeError(Landroid/content/Context;Landroid/app/AlertDialog$Builder;I)V

    goto :goto_1

    .line 1222
    :pswitch_a
    const v2, 0x7f0b00dd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1225
    new-array v2, v3, [Ljava/lang/CharSequence;

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1228
    :pswitch_b
    const v2, 0x7f0b0030

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1231
    new-array v2, v3, [Ljava/lang/CharSequence;

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 1154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private onCreateProgressDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 1252
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1253
    packed-switch p1, :pswitch_data_0

    .line 1261
    :goto_0
    new-instance v1, Lcom/motorola/messaging/activity/SlideshowEditActivity$8;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$8;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1271
    new-instance v1, Lcom/motorola/messaging/activity/SlideshowEditActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/motorola/messaging/activity/SlideshowEditActivity$9;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1278
    return-object v0

    .line 1255
    :pswitch_0
    const v1, 0x7f0b0058

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1256
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1257
    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_0

    .line 1253
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method private previewSlideshow()V
    .locals 3

    .prologue
    .line 410
    sget-boolean v0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 411
    const-string v0, "SlideshowEditActvy"

    const-string v1, "previewSlideshow"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->isSlideshowModelEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 426
    :goto_0
    return-void

    .line 421
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 422
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v1, v0}, Lcom/motorola/messaging/model/SmilModel;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 423
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/motorola/messaging/activity/SlideshowActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 424
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private removeSlide()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideshowEditor:Lcom/motorola/messaging/slideshow/SlideshowEditor;

    iget v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/slideshow/SlideshowEditor;->removeSlide(I)V

    .line 552
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    .line 553
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideListAdapter:Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 554
    return-void
.end method

.method private removeSlideIfEmpty()Z
    .locals 4

    .prologue
    .line 858
    sget-boolean v2, Lcom/motorola/messaging/activity/SlideshowEditActivity;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 859
    const-string v2, "SlideshowEditActvy"

    const-string v3, "removeSlideIfEmpty"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_0
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->slidePositionWithinListRange()Z

    move-result v2

    if-nez v2, :cond_3

    .line 863
    :cond_1
    const/4 v1, 0x0

    .line 877
    :cond_2
    :goto_0
    return v1

    .line 866
    :cond_3
    const/4 v1, 0x0

    .line 867
    .local v1, "slideRemoved":Z
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    iget v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    invoke-virtual {v2, v3}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v0

    .line 868
    .local v0, "slideModel":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->hasImage()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->hasVideo()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->hasNonEmptyText()Z

    move-result v2

    if-nez v2, :cond_2

    .line 872
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideshowEditor:Lcom/motorola/messaging/slideshow/SlideshowEditor;

    iget v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    invoke-virtual {v2, v3}, Lcom/motorola/messaging/slideshow/SlideshowEditor;->removeSlide(I)V

    .line 873
    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    .line 874
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlideListAdapter:Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v2}, Lcom/motorola/messaging/activity/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 875
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setFocusAndSelectionOnList()V
    .locals 2

    .prologue
    .line 558
    iget v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 560
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 561
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 562
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 564
    :cond_0
    return-void
.end method

.method private showCannotAddSlideToast()V
    .locals 2

    .prologue
    .line 1112
    const v0, 0x7f0b006e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1114
    return-void
.end method

.method private showLocationWarningDialogOrAddImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    .line 647
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsShowLocationWarning()Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/motorola/messaging/util/MessageUtils;->isValidLatLong(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v1, "geo_tagged_image_uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 650
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 654
    :goto_0
    return-void

    .line 652
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z

    invoke-direct {p0, v1, p1, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMediaFromUri(ILandroid/net/Uri;Z)V

    goto :goto_0
.end method

.method private slidePositionWithinListRange()Z
    .locals 2

    .prologue
    .line 546
    iget v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v1}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x3

    .line 585
    sget-boolean v2, Lcom/motorola/messaging/activity/SlideshowEditActivity;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 586
    const-string v2, "SlideshowEditActvy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult, requestCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_0
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    .line 644
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-boolean v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->canAddSlide()Z

    move-result v2

    if-nez v2, :cond_2

    .line 594
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->showCannotAddSlideToast()V

    goto :goto_0

    .line 598
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 601
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->showLocationWarningDialogOrAddImage(Landroid/net/Uri;)V

    goto :goto_0

    .line 608
    :pswitch_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/messaging/provider/TempFileProvider;->getScrapPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 609
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->showLocationWarningDialogOrAddImage(Landroid/net/Uri;)V

    goto :goto_0

    .line 613
    .end local v0    # "file":Ljava/io/File;
    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iget-boolean v4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMediaFromUri(ILandroid/net/Uri;Z)V

    goto :goto_0

    .line 618
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z

    invoke-direct {p0, v5, v2, v3}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMediaFromUri(ILandroid/net/Uri;Z)V

    goto :goto_0

    .line 622
    :pswitch_4
    const/4 v2, 0x1

    if-ne p2, v2, :cond_5

    .line 623
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mResizedVideoFileName:Ljava/lang/String;

    iget-wide v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mMessageId:J

    invoke-static {p0, v2, v3, v4}, Lcom/motorola/messaging/model/VideoResizingUtils;->persistResizedVideoAsPart(Landroid/content/Context;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 626
    .local v1, "resizedVideoUri":Landroid/net/Uri;
    if-eqz v1, :cond_4

    .line 627
    iget-boolean v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z

    invoke-direct {p0, v5, v1, v2}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addMediaFromUri(ILandroid/net/Uri;Z)V

    .line 641
    .end local v1    # "resizedVideoUri":Landroid/net/Uri;
    :cond_3
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z

    goto :goto_0

    .line 631
    .restart local v1    # "resizedVideoUri":Landroid/net/Uri;
    :cond_4
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v3, "video_resize_error"

    const/16 v4, 0x12

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 632
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v6, v2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 634
    .end local v1    # "resizedVideoUri":Landroid/net/Uri;
    :cond_5
    if-eqz p2, :cond_3

    .line 636
    const/16 v2, 0xe

    if-eq p2, v2, :cond_3

    .line 637
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v3, "video_resize_error"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 638
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v6, v2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 598
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, -0x2

    const-wide/16 v8, 0x0

    .line 184
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    sget-boolean v6, Lcom/motorola/messaging/activity/SlideshowEditActivity;->LOCAL_LOG:Z

    if-eqz v6, :cond_0

    .line 187
    const-string v6, "SlideshowEditActvy"

    const-string v7, "onCreate"

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    if-eqz p1, :cond_1

    .line 192
    const-string v6, "state"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    .line 193
    const-string v6, "ADD_NEW_SLIDE_ON_RETURN"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z

    .line 195
    const-string v6, "resizedVideoFileName"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mResizedVideoFileName:Ljava/lang/String;

    .line 197
    const-string v6, "MESSAGE_ID"

    invoke-virtual {p1, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mMessageId:J

    .line 199
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/motorola/messaging/model/SmilModel;->readStateFromBundle(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    .line 209
    :goto_0
    iget-wide v6, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mMessageId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 210
    const-string v6, "SlideshowEditActvy"

    const-string v7, "No message id when starting SlideshowEditActivity"

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->internalFinish()V

    .line 263
    :goto_1
    return-void

    .line 201
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 202
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "INTENT_EXTRA_COMPOSER_ADD"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mComposerText:Ljava/lang/String;

    .line 204
    const-string v6, "MESSAGE_ID"

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mMessageId:J

    .line 206
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/motorola/messaging/model/SmilModel;->readStateFromBundle(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    goto :goto_0

    .line 215
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v6, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-nez v6, :cond_3

    .line 216
    sget-object v6, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/motorola/messaging/model/SmilModel;->createNew(Lcom/motorola/messaging/model/Model$CreationMode;Z)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    .line 222
    :goto_2
    const v6, 0x7f030021

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 223
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    .line 225
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 227
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/16 v6, 0x10

    const/16 v7, 0x12

    invoke-virtual {v0, v6, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 229
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 230
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030020

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 231
    .local v1, "customActionBarView":Landroid/view/View;
    const v6, 0x7f09005c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 232
    .local v2, "doneMenuItem":Landroid/view/View;
    new-instance v6, Lcom/motorola/messaging/activity/SlideshowEditActivity$1;

    invoke-direct {v6, p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$1;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v10, v10, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 245
    iget-object v6, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 249
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->initSlideList()V

    .line 252
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->addNewSlideIfNeeded()V
    :try_end_0
    .catch Lcom/motorola/messaging/model/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_1

    .line 253
    :catch_0
    move-exception v3

    .line 254
    .local v3, "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    const-string v6, "SlideshowEditActvy"

    const-string v7, "Failed to initialize the slide-list."

    invoke-static {v6, v7, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->internalFinish()V

    goto/16 :goto_1

    .line 219
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "customActionBarView":Landroid/view/View;
    .end local v2    # "doneMenuItem":Landroid/view/View;
    .end local v3    # "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    iget-object v6, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    iget-object v7, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v6, v7}, Lcom/motorola/messaging/model/Model;->registerModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    goto :goto_2

    .line 256
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    .restart local v1    # "customActionBarView":Landroid/view/View;
    .restart local v2    # "doneMenuItem":Landroid/view/View;
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    :catch_1
    move-exception v3

    .line 257
    .local v3, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v6, "SlideshowEditActvy"

    const-string v7, "Failed to initialize the slide-list."

    invoke-static {v6, v7, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->internalFinish()V

    goto/16 :goto_1

    .line 259
    .end local v3    # "e":Lcom/motorola/messaging/util/MmsException;
    :catch_2
    move-exception v3

    .line 260
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "SlideshowEditActvy"

    const-string v7, "Failed to initialize the slide-list."

    invoke-static {v6, v7, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->internalFinish()V

    goto/16 :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1131
    invoke-super {p0, p1, p2}, Lcom/motorola/messaging/activity/MessagingListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 1135
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1142
    .end local v0    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 1139
    .restart local v0    # "dialog":Landroid/app/Dialog;
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->isProgressDialog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1140
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->onCreateProgressDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1142
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->onCreateAlertDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 448
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 449
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 450
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    .line 272
    sget-boolean v2, Lcom/motorola/messaging/activity/SlideshowEditActivity;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 273
    const-string v2, "SlideshowEditActvy"

    const-string v3, "onDestroy()"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 278
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-eqz v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v2}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    .line 285
    iget-boolean v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mInternalFinish:Z

    if-nez v2, :cond_1

    .line 287
    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    iget-wide v3, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mMessageId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 289
    .local v0, "messageUri":Landroid/net/Uri;
    new-instance v1, Lcom/motorola/messaging/activity/SlideshowEditActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$2;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Landroid/net/Uri;)V

    .line 301
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v2

    const/4 v3, 0x4

    const-string v4, "save_draft_slideshow"

    invoke-virtual {v2, v1, v3, v4}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;ILjava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 304
    .end local v0    # "messageUri":Landroid/net/Uri;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1119
    packed-switch p1, :pswitch_data_0

    .line 1126
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1122
    :pswitch_0
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->commitSmilModelChanges()V

    .line 1123
    const/4 v0, 0x1

    goto :goto_0

    .line 1119
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 363
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    const-string v1, "position"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mDialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 365
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 431
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 443
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 433
    :pswitch_0
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->canAddSlide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->showCannotAddSlideToast()V

    goto :goto_0

    .line 440
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->previewSlideshow()V

    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x7f09009f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v3, -0x3

    const/4 v2, -0x6

    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 1284
    packed-switch p1, :pswitch_data_0

    .line 1452
    :cond_0
    :goto_0
    return-void

    .line 1286
    :pswitch_0
    const-string v0, "edit_text_position"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1287
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v0

    .line 1288
    if-eqz v0, :cond_0

    .line 1289
    const v2, 0x7f0b0036

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1290
    invoke-virtual {p2, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1291
    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->getText()Lcom/motorola/messaging/model/TextModel;

    move-result-object v2

    .line 1292
    const-string v0, ""

    .line 1293
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/motorola/messaging/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1294
    invoke-virtual {v2}, Lcom/motorola/messaging/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1296
    :cond_1
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mCaptionEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mCaptionEditText:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1298
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mCaptionEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 1302
    :pswitch_1
    const-string v0, "resize_image_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    move-object v1, p2

    .line 1303
    check-cast v1, Landroid/app/AlertDialog;

    const v2, 0x7f0b007d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageButtonListener;

    invoke-direct {v3, p0, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeImageButtonListener;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Landroid/net/Uri;)V

    invoke-virtual {v1, v6, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1308
    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x7f0b007d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/motorola/messaging/activity/SlideshowEditActivity$10;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$10;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;)V

    invoke-virtual {p2, v5, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1317
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->removeSlideIfEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    iput-boolean v4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z

    goto/16 :goto_0

    .line 1322
    :pswitch_2
    const-string v0, "resize_video_intent"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object v1, p2

    .line 1323
    check-cast v1, Landroid/app/AlertDialog;

    const v2, 0x1040013

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeVideoButtonListener;

    invoke-direct {v3, p0, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ResizeVideoButtonListener;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v6, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1328
    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x1040009

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/motorola/messaging/activity/SlideshowEditActivity$11;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$11;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;)V

    invoke-virtual {p2, v5, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1337
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->removeSlideIfEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1338
    iput-boolean v4, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z

    goto/16 :goto_0

    .line 1342
    :pswitch_3
    check-cast p2, Landroid/app/AlertDialog;

    const-string v0, "video_resize_error"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/messaging/model/VideoResizingUtils;->getVideoResizeErrorDialogBody(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1346
    :pswitch_4
    const-string v0, "geo_tagged_image_uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1347
    const v1, 0x7f090014

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1348
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1349
    const v2, 0x7f0b0181

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1350
    new-instance v2, Lcom/motorola/messaging/activity/SlideshowEditActivity$12;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$12;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, p2

    .line 1357
    check-cast v2, Landroid/app/AlertDialog;

    const v3, 0x7f0b007a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/motorola/messaging/activity/SlideshowEditActivity$13;

    invoke-direct {v4, p0, v1, v0, p2}, Lcom/motorola/messaging/activity/SlideshowEditActivity$13;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Landroid/widget/CheckBox;Landroid/net/Uri;Landroid/app/Dialog;)V

    invoke-virtual {v2, v6, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v0, p2

    .line 1371
    check-cast v0, Landroid/app/AlertDialog;

    const v1, 0x7f0b007b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/motorola/messaging/activity/SlideshowEditActivity$14;

    invoke-direct {v2, p0, p2}, Lcom/motorola/messaging/activity/SlideshowEditActivity$14;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 1382
    :pswitch_5
    check-cast p2, Landroid/app/AlertDialog;

    const-string v0, "error_media_type"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v6, v0}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogBody(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_6
    move-object v0, p2

    .line 1387
    check-cast v0, Landroid/app/AlertDialog;

    const-string v1, "error_media_type"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v3, v1}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogTitle(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1390
    check-cast p2, Landroid/app/AlertDialog;

    const-string v0, "error_media_type"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v3, v0}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogBody(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_7
    move-object v0, p2

    .line 1395
    check-cast v0, Landroid/app/AlertDialog;

    const-string v1, "error_media_type"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v2, v1}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogTitle(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1398
    check-cast p2, Landroid/app/AlertDialog;

    const-string v0, "error_media_type"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v2, v0}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogBody(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1403
    :pswitch_8
    check-cast p2, Landroid/app/AlertDialog;

    const-string v0, "error_media_type"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v5, v0}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogBody(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1408
    :pswitch_9
    check-cast p2, Landroid/app/AlertDialog;

    const/4 v0, -0x4

    const-string v1, "error_media_type"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogBody(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1416
    :pswitch_a
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1417
    new-instance v1, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;

    const v2, 0x7f0b00d5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1418
    new-instance v1, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;

    const v2, 0x7f0b00d6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1419
    new-instance v1, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;

    const v2, 0x7f0b00d9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1420
    new-instance v1, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;

    const v2, 0x7f0b00da

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1421
    new-instance v1, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;

    const v2, 0x7f0b00d7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1422
    new-instance v1, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;

    const v2, 0x7f0b00d8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListItem;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1424
    new-instance v1, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListAdapter;

    invoke-direct {v1, p0, p0, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListAdapter;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Landroid/content/Context;Ljava/util/List;)V

    move-object v0, p2

    .line 1426
    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object v0, p2

    .line 1427
    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v2, Lcom/motorola/messaging/activity/SlideshowEditActivity$15;

    invoke-direct {v2, p0, v1, p2}, Lcom/motorola/messaging/activity/SlideshowEditActivity$15;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Lcom/motorola/messaging/activity/SlideshowEditActivity$ListAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 1437
    :pswitch_b
    const-string v0, "position"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->getOptionsBasedOnPosition(I)Ljava/util/List;

    move-result-object v0

    .line 1440
    new-instance v1, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListAdapter;

    invoke-direct {v1, p0, p0, v0}, Lcom/motorola/messaging/activity/SlideshowEditActivity$ListAdapter;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Landroid/content/Context;Ljava/util/List;)V

    move-object v0, p2

    .line 1442
    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object v0, p2

    .line 1443
    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v2, Lcom/motorola/messaging/activity/SlideshowEditActivity$16;

    invoke-direct {v2, p0, v1, p2}, Lcom/motorola/messaging/activity/SlideshowEditActivity$16;-><init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;Lcom/motorola/messaging/activity/SlideshowEditActivity$ListAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 1284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 369
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 371
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string v2, "slide_index"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 374
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 382
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 384
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    .line 385
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string v1, "slide_index"

    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 389
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z

    if-eqz v0, :cond_1

    .line 390
    const-string v0, "ADD_NEW_SLIDE_ON_RETURN"

    iget-boolean v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mAddNewSlideOnReturn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 394
    :cond_1
    const-string v0, "resizedVideoFileName"

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mResizedVideoFileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v0, "MESSAGE_ID"

    iget-wide v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 400
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/model/SmilModel;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 402
    sget-boolean v0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 403
    const-string v0, "SlideshowEditActvy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_2
    const-string v0, "state"

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 406
    return-void
.end method
