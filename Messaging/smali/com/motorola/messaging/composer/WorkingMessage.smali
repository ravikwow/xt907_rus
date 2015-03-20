.class public Lcom/motorola/messaging/composer/WorkingMessage;
.super Ljava/lang/Object;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;,
        Lcom/motorola/messaging/composer/WorkingMessage$SmsInfo;,
        Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;
    }
.end annotation


# static fields
.field private static final LOCAL_LOG:Z

.field private static final MMS_DRAFT_PROJECTION:[Ljava/lang/String;

.field private static final SMS_DRAFT_PROJECTION:[Ljava/lang/String;

.field private static mSendingTask:Lcom/motorola/messaging/concurrent/TaskManager$Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/messaging/concurrent/TaskManager$Task",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAttachmentType:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mConversation:Lcom/motorola/messaging/conversation/Conversation;

.field private mDiscarded:Z

.field private mHasChanged:Z

.field private mHasNon7BitEncoding:Z

.field private mInternallyDiscarded:Z

.field private mIsAddingMedia:Z

.field private mLoading:Z

.field private mMessageGroupType:Z

.field private mMessageUri:Landroid/net/Uri;

.field private mMmsState:I

.field private mPreviousThreadId:J

.field private mPriority:I

.field private mSignature:Ljava/lang/String;

.field private mSmilModel:Lcom/motorola/messaging/model/SmilModel;

.field private mSmsEmailCombinedState:I

.field private final mStatusListener:Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;

.field private mSubject:Ljava/lang/CharSequence;

.field private mText:Ljava/lang/CharSequence;

.field private mWorkingRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    .line 202
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/messaging/composer/WorkingMessage;->mSendingTask:Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 1876
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sub"

    aput-object v1, v0, v4

    const-string v1, "sub_cs"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "pri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/messaging/composer/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    .line 2014
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v3

    const-string v1, "priority"

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/messaging/composer/WorkingMessage;->SMS_DRAFT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 167
    iput-boolean v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mDiscarded:Z

    .line 172
    iput-boolean v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mInternallyDiscarded:Z

    .line 185
    iput-boolean v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasChanged:Z

    .line 188
    iput-boolean v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mIsAddingMedia:Z

    .line 191
    iput-boolean v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mLoading:Z

    .line 198
    iput-boolean v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasNon7BitEncoding:Z

    .line 251
    iput-object p1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    .line 252
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 253
    iput-object p1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mStatusListener:Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;

    .line 254
    iput-object p1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mActivity:Landroid/app/Activity;

    .line 255
    iput v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mAttachmentType:I

    .line 256
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 257
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->isDefaultMessageGroupType(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageGroupType:Z

    .line 258
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;
    .param p1, "x1"    # Lcom/motorola/messaging/conversation/Conversation;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/motorola/messaging/composer/WorkingMessage;->loadFromConversation(Lcom/motorola/messaging/conversation/Conversation;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/motorola/messaging/composer/WorkingMessage;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/composer/WorkingMessage;->hasOnlySignature(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;
    .param p1, "x1"    # Lcom/motorola/messaging/conversation/Conversation;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/composer/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;Landroid/net/Uri;Lcom/motorola/messaging/pdu/PduPersister;Lcom/motorola/messaging/model/SmilModel;Lcom/motorola/messaging/pdu/SendReq;I)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;
    .param p1, "x1"    # Lcom/motorola/messaging/conversation/Conversation;
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Lcom/motorola/messaging/pdu/PduPersister;
    .param p4, "x4"    # Lcom/motorola/messaging/model/SmilModel;
    .param p5, "x5"    # Lcom/motorola/messaging/pdu/SendReq;
    .param p6, "x6"    # I

    .prologue
    .line 88
    invoke-direct/range {p0 .. p6}, Lcom/motorola/messaging/composer/WorkingMessage;->sendMmsWorker(Lcom/motorola/messaging/conversation/Conversation;Landroid/net/Uri;Lcom/motorola/messaging/pdu/PduPersister;Lcom/motorola/messaging/model/SmilModel;Lcom/motorola/messaging/pdu/SendReq;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;
    .param p1, "x1"    # Lcom/motorola/messaging/conversation/Conversation;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/composer/WorkingMessage;->sendSmsWorker(Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/motorola/messaging/composer/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;Landroid/net/Uri;Lcom/motorola/messaging/model/SmilModel;Lcom/motorola/messaging/pdu/SendReq;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;
    .param p1, "x1"    # Lcom/motorola/messaging/conversation/Conversation;
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Lcom/motorola/messaging/model/SmilModel;
    .param p4, "x4"    # Lcom/motorola/messaging/pdu/SendReq;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/composer/WorkingMessage;->createOrUpdateDraftMms(Lcom/motorola/messaging/conversation/Conversation;Landroid/net/Uri;Lcom/motorola/messaging/model/SmilModel;Lcom/motorola/messaging/pdu/SendReq;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/motorola/messaging/composer/WorkingMessage;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;

    .prologue
    .line 88
    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPriority:I

    return v0
.end method

.method static synthetic access$1800(Lcom/motorola/messaging/composer/WorkingMessage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/motorola/messaging/composer/WorkingMessage;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/motorola/messaging/composer/WorkingMessage;JLcom/motorola/messaging/model/SmilModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/motorola/messaging/model/SmilModel;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/composer/WorkingMessage;->deleteDraftMmsMessage(JLcom/motorola/messaging/model/SmilModel;)V

    return-void
.end method

.method static synthetic access$202(Lcom/motorola/messaging/composer/WorkingMessage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageGroupType:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/motorola/messaging/composer/WorkingMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->clearPreviousThread()V

    return-void
.end method

.method static synthetic access$2200()Lcom/motorola/messaging/concurrent/TaskManager$Task;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/motorola/messaging/composer/WorkingMessage;->mSendingTask:Lcom/motorola/messaging/concurrent/TaskManager$Task;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/messaging/composer/WorkingMessage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mLoading:Z

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/messaging/composer/WorkingMessage;)Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mStatusListener:Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/messaging/composer/WorkingMessage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/motorola/messaging/composer/WorkingMessage;->prepareForSave(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/messaging/composer/WorkingMessage;)Lcom/motorola/messaging/conversation/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;
    .param p1, "x1"    # Lcom/motorola/messaging/conversation/Conversation;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/motorola/messaging/composer/WorkingMessage;->asyncUpdateDraftMmsMessage(Lcom/motorola/messaging/conversation/Conversation;)V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/messaging/composer/WorkingMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->asyncDeleteDraftMmsMessage()V

    return-void
.end method

.method static synthetic access$900(Lcom/motorola/messaging/composer/WorkingMessage;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/composer/WorkingMessage;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private adjustPriority()V
    .locals 3

    .prologue
    const/16 v2, 0x81

    const/4 v1, 0x0

    .line 1045
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPriority:I

    sparse-switch v0, :sswitch_data_0

    .line 1058
    iput v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPriority:I

    .line 1078
    :goto_0
    :sswitch_0
    return-void

    .line 1048
    :sswitch_1
    iput v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPriority:I

    goto :goto_0

    .line 1051
    :sswitch_2
    const/16 v0, 0x82

    iput v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPriority:I

    goto :goto_0

    .line 1062
    :cond_0
    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPriority:I

    sparse-switch v0, :sswitch_data_1

    .line 1074
    iput v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPriority:I

    goto :goto_0

    .line 1068
    :sswitch_3
    iput v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPriority:I

    goto :goto_0

    .line 1071
    :sswitch_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPriority:I

    goto :goto_0

    .line 1046
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_2
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch

    .line 1062
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0x80 -> :sswitch_3
        0x81 -> :sswitch_3
        0x82 -> :sswitch_4
    .end sparse-switch
.end method

.method private appendMedia(ILandroid/net/Uri;)I
    .locals 11
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;,
            Lcom/motorola/messaging/model/UnsupportContentTypeException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 865
    sget-boolean v8, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v8, :cond_0

    .line 866
    const-string v8, "WorkingMessage"

    const-string v9, "appendMedia"

    invoke-static {v8, v9}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/messaging/composer/WorkingMessage;->isSlideMedia(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 870
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Attempting to append attachment"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 873
    :cond_1
    const/4 v3, 0x0

    .line 876
    .local v3, "result":I
    if-nez p1, :cond_3

    .line 939
    .end local v3    # "result":I
    :cond_2
    :goto_0
    return v3

    .line 885
    .restart local v3    # "result":I
    :cond_3
    const/4 v0, 0x1

    .line 887
    .local v0, "addNewSlide":Z
    iget-object v8, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v8}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v8

    if-ne v8, v10, :cond_4

    .line 888
    iget-object v8, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v5

    .line 890
    .local v5, "slideModel":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v5}, Lcom/motorola/messaging/model/SlideModel;->hasImage()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5}, Lcom/motorola/messaging/model/SlideModel;->hasAudio()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5}, Lcom/motorola/messaging/model/SlideModel;->hasVideo()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5}, Lcom/motorola/messaging/model/SlideModel;->hasNonEmptyText()Z

    move-result v8

    if-nez v8, :cond_4

    .line 894
    const/4 v0, 0x0

    .line 898
    .end local v5    # "slideModel":Lcom/motorola/messaging/model/SlideModel;
    :cond_4
    new-instance v7, Lcom/motorola/messaging/slideshow/SlideshowEditor;

    iget-object v8, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-direct {v7, v8, v9}, Lcom/motorola/messaging/slideshow/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/SmilModel;)V

    .line 900
    .local v7, "slideShowEditor":Lcom/motorola/messaging/slideshow/SlideshowEditor;
    if-eqz v0, :cond_5

    .line 902
    invoke-virtual {v7}, Lcom/motorola/messaging/slideshow/SlideshowEditor;->addNewSlide()Z

    move-result v8

    if-nez v8, :cond_5

    .line 904
    const/4 v3, -0x5

    goto :goto_0

    .line 909
    :cond_5
    iget-object v8, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v8}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 910
    .local v6, "slidePosition":I
    const/4 v2, 0x0

    .line 916
    .local v2, "mediaAdded":Z
    if-ne p1, v10, :cond_6

    .line 917
    :try_start_0
    new-instance v1, Lcom/motorola/messaging/model/ImageModel;

    iget-object v8, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-direct {v1, v8, v9, p2}, Lcom/motorola/messaging/model/ImageModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;)V

    .line 927
    .local v1, "media":Lcom/motorola/messaging/model/MediaModel;
    :goto_1
    iget-object v8, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v8, v6}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v4

    .line 928
    .local v4, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v4, v1}, Lcom/motorola/messaging/model/SlideModel;->add(Lcom/motorola/messaging/model/MediaModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    const/4 v2, 0x1

    .line 934
    if-nez v2, :cond_2

    .line 935
    invoke-virtual {v7, v6}, Lcom/motorola/messaging/slideshow/SlideshowEditor;->removeSlide(I)V

    goto :goto_0

    .line 918
    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    .end local v4    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_6
    const/4 v8, 0x2

    if-ne p1, v8, :cond_7

    .line 919
    :try_start_1
    new-instance v1, Lcom/motorola/messaging/model/VideoModel;

    iget-object v8, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-direct {v1, v8, v9, p2}, Lcom/motorola/messaging/model/VideoModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;)V

    .restart local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    goto :goto_1

    .line 920
    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_7
    const/4 v8, 0x3

    if-ne p1, v8, :cond_8

    .line 921
    new-instance v1, Lcom/motorola/messaging/model/AudioModel;

    iget-object v8, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-direct {v1, v8, v9, p2}, Lcom/motorola/messaging/model/AudioModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;)V

    .restart local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    goto :goto_1

    .line 923
    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_8
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeMedia type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uri="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 934
    :catchall_0
    move-exception v8

    if-nez v2, :cond_9

    .line 935
    invoke-virtual {v7, v6}, Lcom/motorola/messaging/slideshow/SlideshowEditor;->removeSlide(I)V

    :cond_9
    throw v8
.end method

.method private asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2089
    sget-boolean v0, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 2090
    const-string v0, "WorkingMessage"

    const-string v1, "asyncDelete %s where %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2093
    :cond_0
    new-instance v0, Lcom/motorola/messaging/composer/WorkingMessage$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/motorola/messaging/composer/WorkingMessage$7;-><init>(Lcom/motorola/messaging/composer/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2098
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "async_delete"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 2099
    return-void
.end method

.method private asyncDeleteDraftMmsMessage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2102
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2103
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2107
    iput-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 2109
    :cond_0
    return-void
.end method

.method private asyncDeleteDraftSmsMessage(Lcom/motorola/messaging/conversation/Conversation;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2112
    if-nez p1, :cond_1

    move-wide v0, v2

    .line 2113
    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2114
    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "type=3"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/messaging/composer/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2117
    :cond_0
    return-void

    .line 2112
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v0

    goto :goto_0
.end method

.method private asyncDeleteEmptyMessage(Lcom/motorola/messaging/conversation/Conversation;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2120
    sget-boolean v0, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 2121
    const-string v0, "WorkingMessage"

    const-string v1, "asyncDeleteEmptyMessage"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    :cond_0
    if-nez p1, :cond_2

    move-wide v0, v2

    .line 2126
    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 2127
    new-instance v2, Lcom/motorola/messaging/composer/WorkingMessage$8;

    invoke-direct {v2, p0, v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage$8;-><init>(Lcom/motorola/messaging/composer/WorkingMessage;J)V

    .line 2138
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v0

    const-string v1, "async_delete_empty_message"

    invoke-virtual {v0, v2, v1}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 2140
    :cond_1
    return-void

    .line 2124
    :cond_2
    invoke-virtual {p1}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v0

    goto :goto_0
.end method

.method private asyncUpdateDraftMmsMessage(Lcom/motorola/messaging/conversation/Conversation;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1957
    sget-boolean v0, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1958
    const-string v0, "WorkingMessage"

    const-string v1, "asyncUpdateDraftMmsMessage, conv=%s, uri=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1962
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPriority:I

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->makeSendReq(Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/CharSequence;I)Lcom/motorola/messaging/pdu/SendReq;

    move-result-object v5

    .line 1963
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1964
    iget-object v4, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    .line 1965
    new-instance v0, Lcom/motorola/messaging/composer/WorkingMessage$5;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/composer/WorkingMessage$5;-><init>(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;Landroid/net/Uri;Lcom/motorola/messaging/model/SmilModel;Lcom/motorola/messaging/pdu/SendReq;)V

    .line 1974
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "update_draft_mms"

    invoke-virtual {v1, v0, v6, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;ILjava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 1975
    return-void
.end method

.method private asyncUpdateDraftSmsMessage(Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    .line 2058
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    .line 2059
    new-instance v1, Lcom/motorola/messaging/composer/WorkingMessage$6;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/motorola/messaging/composer/WorkingMessage$6;-><init>(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/String;Lcom/motorola/messaging/model/SmilModel;)V

    .line 2085
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "update_draft_sms"

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;ILjava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 2086
    return-void
.end method

.method private buildInitialSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private changeMedia(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mediaSrc"    # Ljava/lang/String;
    .param p4, "mediaData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 774
    sget-boolean v3, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 775
    const-string v3, "WorkingMessage"

    const-string v4, "changeMedia"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_0
    const/4 v1, 0x0

    .line 780
    .local v1, "slide":Lcom/motorola/messaging/model/SlideModel;
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v3}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v3}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 784
    :cond_1
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v3}, Lcom/motorola/messaging/model/SmilModel;->clear()V

    .line 785
    new-instance v1, Lcom/motorola/messaging/model/SlideModel;

    .end local v1    # "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-direct {v1}, Lcom/motorola/messaging/model/SlideModel;-><init>()V

    .line 786
    .restart local v1    # "slide":Lcom/motorola/messaging/model/SlideModel;
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v3, v1}, Lcom/motorola/messaging/model/SmilModel;->addSlide(Lcom/motorola/messaging/model/SlideModel;)Z

    .line 798
    :goto_0
    if-nez p1, :cond_3

    .line 801
    const/16 v3, 0x10

    invoke-direct {p0, v3, v5, v5}, Lcom/motorola/messaging/composer/WorkingMessage;->updateState(IZZ)V

    .line 857
    :goto_1
    return-void

    .line 789
    :cond_2
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v3, v5}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v1

    .line 792
    invoke-virtual {v1}, Lcom/motorola/messaging/model/SlideModel;->keepOnlyText()V

    .line 793
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v3}, Lcom/motorola/messaging/model/SmilModel;->clear()V

    .line 794
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v3, v1}, Lcom/motorola/messaging/model/SmilModel;->addSlide(Lcom/motorola/messaging/model/SlideModel;)Z

    goto :goto_0

    .line 808
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 847
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeMedia type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 810
    :pswitch_1
    new-instance v0, Lcom/motorola/messaging/model/ImageModel;

    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-direct {v0, v3, v4, p2}, Lcom/motorola/messaging/model/ImageModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;)V

    .line 851
    .local v0, "media":Lcom/motorola/messaging/model/MediaModel;
    :goto_2
    invoke-direct {p0, p1}, Lcom/motorola/messaging/composer/WorkingMessage;->isSlideMedia(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 852
    invoke-virtual {v1, v0}, Lcom/motorola/messaging/model/SlideModel;->add(Lcom/motorola/messaging/model/MediaModel;)V

    goto :goto_1

    .line 813
    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_2
    new-instance v0, Lcom/motorola/messaging/model/VideoModel;

    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-direct {v0, v3, v4, p2}, Lcom/motorola/messaging/model/VideoModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;)V

    .line 814
    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    goto :goto_2

    .line 816
    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_3
    new-instance v0, Lcom/motorola/messaging/model/AudioModel;

    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-direct {v0, v3, v4, p2}, Lcom/motorola/messaging/model/AudioModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;)V

    .line 817
    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    goto :goto_2

    .line 819
    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_4
    new-instance v0, Lcom/motorola/messaging/model/VcardModel;

    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-direct {v0, v3, v4, p2, p3}, Lcom/motorola/messaging/model/VcardModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;Ljava/lang/String;)V

    .line 820
    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    goto :goto_2

    .line 822
    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 825
    :cond_4
    new-instance v0, Lcom/motorola/messaging/model/VcardModel;

    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v0, v3, p3, v4}, Lcom/motorola/messaging/model/VcardModel;-><init>(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 826
    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    goto :goto_2

    .line 828
    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_6
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsConvertIcalToVcalEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 832
    :try_start_0
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/motorola/messaging/frameworkadapter/motorola/VCalUtils;->vCalV2ToV1(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 842
    const/4 p3, 0x0

    .line 844
    :cond_5
    new-instance v0, Lcom/motorola/messaging/model/ICalModel;

    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-direct {v0, v3, v4, p2, p3}, Lcom/motorola/messaging/model/ICalModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;Ljava/lang/String;)V

    .line 845
    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    goto :goto_2

    .line 833
    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    :catch_0
    move-exception v2

    .line 836
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "WorkingMessage"

    const-string v4, "Exception while calling VCalUtils::vCalV2ToV1()"

    invoke-static {v3, v4, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 837
    new-instance v3, Lcom/motorola/messaging/util/MmsException;

    invoke-direct {v3, v2}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 855
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_6
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v3, v0}, Lcom/motorola/messaging/model/SmilModel;->addAttachment(Lcom/motorola/messaging/model/MediaModel;)Z

    goto/16 :goto_1

    .line 808
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private clearDrafts()V
    .locals 2

    .prologue
    .line 1331
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->asyncDeleteDraftMmsMessage()V

    .line 1334
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-direct {p0, v0}, Lcom/motorola/messaging/composer/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/motorola/messaging/conversation/Conversation;)V

    .line 1337
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-direct {p0, v0}, Lcom/motorola/messaging/composer/WorkingMessage;->asyncDeleteEmptyMessage(Lcom/motorola/messaging/conversation/Conversation;)V

    .line 1339
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/conversation/Conversation;->setDraftState(Z)V

    .line 1343
    :cond_0
    return-void
.end method

.method private clearPreviousThread()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 2005
    iget-wide v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPreviousThreadId:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 2006
    iget-wide v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPreviousThreadId:J

    invoke-static {v0, v1}, Lcom/motorola/messaging/conversation/ConversationManager;->deleteDraftSmsMessage(J)V

    .line 2007
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPreviousThreadId:J

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/conversation/Conversation;->deleteEmpty(Landroid/content/Context;J)V

    .line 2008
    iget-wide v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPreviousThreadId:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/conversation/Conversation;->setDraftState(JZ)V

    .line 2009
    iput-wide v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPreviousThreadId:J

    .line 2011
    :cond_0
    return-void
.end method

.method private correctAttachmentState(Z)V
    .locals 3
    .param p1, "notify"    # Z

    .prologue
    .line 277
    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mAttachmentType:I

    .line 279
    .local v0, "oldAttachmentType":I
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-static {v1}, Lcom/motorola/messaging/util/MessageUtils;->getMMSMediaType(Lcom/motorola/messaging/model/SmilModel;)I

    move-result v1

    iput v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mAttachmentType:I

    .line 281
    iget v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mAttachmentType:I

    if-nez v1, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->resetCurrentSmilModel()V

    .line 288
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasMMSAttachment()Z

    move-result v2

    invoke-direct {p0, v1, v2, p1}, Lcom/motorola/messaging/composer/WorkingMessage;->updateState(IZZ)V

    .line 290
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mAttachmentType:I

    if-eq v0, v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mStatusListener:Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;

    invoke-interface {v1}, Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;->onAttachmentChanged()V

    .line 293
    :cond_1
    return-void
.end method

.method public static createEmpty(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;
    .locals 4
    .param p0, "activity"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;

    .prologue
    const/4 v3, 0x1

    .line 264
    sget-boolean v1, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 265
    const-string v1, "WorkingMessage"

    const-string v2, "createEmpty"

    invoke-static {v1, v3, v3, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 269
    :cond_0
    new-instance v0, Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/composer/WorkingMessage;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 272
    .local v0, "msg":Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-virtual {v0}, Lcom/motorola/messaging/composer/WorkingMessage;->addSignature()V

    .line 273
    return-object v0
.end method

.method private createOrUpdateDraftMms(Lcom/motorola/messaging/conversation/Conversation;Landroid/net/Uri;Lcom/motorola/messaging/model/SmilModel;Lcom/motorola/messaging/pdu/SendReq;)Landroid/net/Uri;
    .locals 5
    .param p1, "conv"    # Lcom/motorola/messaging/conversation/Conversation;
    .param p2, "mmsMessage"    # Landroid/net/Uri;
    .param p3, "smilModel"    # Lcom/motorola/messaging/model/SmilModel;
    .param p4, "sendReq"    # Lcom/motorola/messaging/pdu/SendReq;

    .prologue
    .line 1979
    if-nez p2, :cond_1

    .line 1982
    invoke-static {p4, p3}, Lcom/motorola/messaging/conversation/ConversationManager;->createDraftMmsMessage(Lcom/motorola/messaging/pdu/SendReq;Lcom/motorola/messaging/model/SmilModel;)Lcom/motorola/messaging/conversation/ConversationManager$MessageData;

    move-result-object v0

    .line 1983
    .local v0, "msgData":Lcom/motorola/messaging/conversation/ConversationManager$MessageData;
    if-eqz v0, :cond_0

    .line 1984
    iget-object p2, v0, Lcom/motorola/messaging/conversation/ConversationManager$MessageData;->uri:Landroid/net/Uri;

    .line 1985
    iget-wide v1, v0, Lcom/motorola/messaging/conversation/ConversationManager$MessageData;->threadId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1986
    iget-wide v1, v0, Lcom/motorola/messaging/conversation/ConversationManager$MessageData;->threadId:J

    invoke-virtual {p1, v1, v2}, Lcom/motorola/messaging/conversation/Conversation;->setThreadId(J)V

    .line 1997
    .end local v0    # "msgData":Lcom/motorola/messaging/conversation/ConversationManager$MessageData;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/motorola/messaging/conversation/ConversationManager;->deleteDraftSmsMessage(J)V

    .line 1999
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->clearPreviousThread()V

    .line 2001
    return-object p2

    .line 1991
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/messaging/conversation/Conversation;->ensureThreadId()J

    .line 1993
    invoke-static {p4, p3, p2}, Lcom/motorola/messaging/conversation/ConversationManager;->updateDraftMmsMessage(Lcom/motorola/messaging/pdu/SendReq;Lcom/motorola/messaging/model/SmilModel;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private deleteDraftMmsMessage(JLcom/motorola/messaging/model/SmilModel;)V
    .locals 1
    .param p1, "threadId"    # J
    .param p3, "smilModel"    # Lcom/motorola/messaging/model/SmilModel;

    .prologue
    .line 2143
    invoke-static {p1, p2}, Lcom/motorola/messaging/conversation/ConversationManager;->deleteDraftMmsMessage(J)V

    .line 2144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 2145
    if-eqz p3, :cond_0

    .line 2146
    invoke-virtual {p3}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    .line 2148
    :cond_0
    return-void
.end method

.method private ensureSmilModel()V
    .locals 5

    .prologue
    .line 752
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-eqz v3, :cond_0

    .line 766
    :goto_0
    return-void

    .line 756
    :cond_0
    sget-object v3, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/motorola/messaging/model/SmilModel;->createNew(Lcom/motorola/messaging/model/Model$CreationMode;Z)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v2

    .line 757
    .local v2, "smilModel":Lcom/motorola/messaging/model/SmilModel;
    new-instance v1, Lcom/motorola/messaging/model/SlideModel;

    invoke-direct {v1}, Lcom/motorola/messaging/model/SlideModel;-><init>()V

    .line 759
    .local v1, "slide":Lcom/motorola/messaging/model/SlideModel;
    :try_start_0
    invoke-virtual {v2, v1}, Lcom/motorola/messaging/model/SmilModel;->addSlide(Lcom/motorola/messaging/model/SlideModel;)Z
    :try_end_0
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    iput-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    goto :goto_0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Lcom/motorola/messaging/model/ContentRestrictionException;
    const-string v3, "WorkingMessage"

    const-string v4, "Failed to add slide"

    invoke-static {v3, v4, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 762
    invoke-virtual {v2}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    goto :goto_0
.end method

.method private getPduInfoFromUri(Landroid/net/Uri;)Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 328
    new-instance v0, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;-><init>(Lcom/motorola/messaging/composer/WorkingMessage$1;)V

    .line 330
    .local v0, "mmsInfo":Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;
    iget-object v5, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v2

    .line 331
    .local v2, "p":Lcom/motorola/messaging/pdu/PduPersister;
    invoke-virtual {v2, p1}, Lcom/motorola/messaging/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v3

    check-cast v3, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;

    .line 333
    .local v3, "pdu":Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/GenericPdu;->getMessageType()I

    move-result v1

    .line 334
    .local v1, "msgType":I
    const/16 v5, 0x80

    if-eq v1, v5, :cond_0

    const/16 v5, 0x84

    if-ne v1, v5, :cond_3

    .line 336
    :cond_0
    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v5

    iput v5, v0, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;->priority:I

    .line 337
    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getSubject()Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v4

    .line 338
    .local v4, "subject":Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-eqz v4, :cond_1

    .line 339
    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;->subject:Ljava/lang/String;

    .line 341
    :cond_1
    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getBody()Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v5

    iput-object v5, v0, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;->pduBody:Lcom/motorola/messaging/pdu/PduBody;

    .line 342
    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getBcc()[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v0, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;->hasBccRecipients:Z

    .line 347
    return-object v0

    .line 342
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 344
    .end local v4    # "subject":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :cond_3
    new-instance v5, Lcom/motorola/messaging/util/MmsException;

    invoke-direct {v5}, Lcom/motorola/messaging/util/MmsException;-><init>()V

    throw v5
.end method

.method private hasOnlySignature(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "textToCheck"    # Ljava/lang/String;
    .param p2, "ignoreWhiteSpaces"    # Z

    .prologue
    .line 682
    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSignature:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 683
    if-nez p2, :cond_0

    .line 684
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->buildInitialSignature()Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, "tempSignature":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 694
    .end local v0    # "tempSignature":Ljava/lang/String;
    :goto_0
    return v2

    .line 688
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, "tempText":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSignature:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\n"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 690
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 694
    .end local v1    # "tempText":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isMMSStateForced()Z
    .locals 2

    .prologue
    .line 642
    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSlideMedia(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 635
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 636
    :cond_0
    const/4 v0, 0x0

    .line 638
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static loadDraft(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/conversation/Conversation;)Lcom/motorola/messaging/composer/WorkingMessage;
    .locals 6
    .param p0, "activity"    # Lcom/motorola/messaging/activity/ComposeMessageActivity;
    .param p1, "conv"    # Lcom/motorola/messaging/conversation/Conversation;

    .prologue
    .line 356
    sget-boolean v3, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 357
    const-string v3, "WorkingMessage"

    const-string v4, "loadDraft"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 361
    invoke-virtual {p1}, Lcom/motorola/messaging/conversation/Conversation;->hasDraft()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 362
    new-instance v0, Lcom/motorola/messaging/composer/WorkingMessage;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/composer/WorkingMessage;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 363
    .local v0, "msg":Lcom/motorola/messaging/composer/WorkingMessage;
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/motorola/messaging/composer/WorkingMessage;->mLoading:Z

    .line 364
    new-instance v1, Lcom/motorola/messaging/composer/WorkingMessage$1;

    invoke-direct {v1, v0, p1, p0}, Lcom/motorola/messaging/composer/WorkingMessage$1;-><init>(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;Lcom/motorola/messaging/activity/ComposeMessageActivity;)V

    .line 383
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v3

    const/4 v4, 0x2

    const-string v5, "loading_drafts"

    invoke-virtual {v3, v1, v4, v5}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;ILjava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 395
    .end local v0    # "msg":Lcom/motorola/messaging/composer/WorkingMessage;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_1
    :goto_0
    return-object v0

    .line 386
    :cond_2
    invoke-static {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->createEmpty(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    goto :goto_0

    .line 390
    :cond_3
    invoke-static {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->createEmpty(Lcom/motorola/messaging/activity/ComposeMessageActivity;)Lcom/motorola/messaging/composer/WorkingMessage;

    move-result-object v0

    .line 391
    .restart local v0    # "msg":Lcom/motorola/messaging/composer/WorkingMessage;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSavedText()Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "temporarySavedText":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 393
    invoke-virtual {v0, v2}, Lcom/motorola/messaging/composer/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private loadFromConversation(Lcom/motorola/messaging/conversation/Conversation;)Z
    .locals 9
    .param p1, "conv"    # Lcom/motorola/messaging/conversation/Conversation;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 408
    sget-boolean v6, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v6, :cond_0

    .line 409
    const-string v6, "WorkingMessage"

    const-string v7, "loadFromConversation %s"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p1, v8, v4

    invoke-static {v6, v7, v8}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v2

    .line 413
    .local v2, "threadId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_2

    .line 443
    :cond_1
    :goto_0
    return v4

    .line 418
    :cond_2
    iget-object v6, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v3, p1}, Lcom/motorola/messaging/composer/WorkingMessage;->readDraftSmsMessage(Landroid/content/Context;JLcom/motorola/messaging/conversation/Conversation;)Lcom/motorola/messaging/composer/WorkingMessage$SmsInfo;

    move-result-object v1

    .line 419
    .local v1, "smsInfo":Lcom/motorola/messaging/composer/WorkingMessage$SmsInfo;
    if-eqz v1, :cond_3

    .line 420
    iget-object v6, v1, Lcom/motorola/messaging/composer/WorkingMessage$SmsInfo;->body:Ljava/lang/String;

    iput-object v6, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 421
    iget v6, v1, Lcom/motorola/messaging/composer/WorkingMessage$SmsInfo;->priority:I

    invoke-virtual {p0, v6}, Lcom/motorola/messaging/composer/WorkingMessage;->setPriority(I)V

    .line 424
    iput-boolean v4, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageGroupType:Z

    .line 426
    iget-object v6, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    move v4, v5

    .line 427
    goto :goto_0

    .line 432
    :cond_3
    iget-object v6, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v3}, Lcom/motorola/messaging/composer/WorkingMessage;->readDraftMmsMessage(Landroid/content/Context;J)Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;

    move-result-object v0

    .line 433
    .local v0, "mmsInfo":Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;
    if-eqz v0, :cond_1

    iget-object v6, v0, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;->uri:Landroid/net/Uri;

    if-eqz v6, :cond_1

    .line 434
    iget-object v6, v0, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;->uri:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/motorola/messaging/composer/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 435
    iget-object v6, v0, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;->subject:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 436
    iget-object v6, v0, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;->subject:Ljava/lang/String;

    invoke-virtual {p0, v6, v4}, Lcom/motorola/messaging/composer/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 438
    :cond_4
    iget v4, v0, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;->priority:I

    invoke-virtual {p0, v4}, Lcom/motorola/messaging/composer/WorkingMessage;->setPriority(I)V

    move v4, v5

    .line 439
    goto :goto_0
.end method

.method private loadFromUri(Landroid/net/Uri;)Z
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    sget-boolean v4, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 297
    const-string v4, "WorkingMessage"

    const-string v5, "loadFromUri, uri="

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-static {v4, v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/motorola/messaging/composer/WorkingMessage;->getPduInfoFromUri(Landroid/net/Uri;)Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;

    move-result-object v1

    .line 302
    .local v1, "mmsInfo":Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;
    iget-object v4, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    iget-object v6, v1, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;->pduBody:Lcom/motorola/messaging/pdu/PduBody;

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/motorola/messaging/model/SmilModel;->createNew(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Lcom/motorola/messaging/pdu/PduBody;Z)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    .line 303
    iget-object v4, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-static {v4, v5}, Lcom/motorola/messaging/util/MessageUtils;->showUnsupportedContentWarning(Landroid/app/Activity;Lcom/motorola/messaging/model/SmilModel;)V

    .line 305
    iget-object v4, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-nez v4, :cond_1

    .line 306
    const-string v3, "WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t load uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .end local v1    # "mmsInfo":Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;
    :goto_0
    return v2

    .line 310
    .restart local v1    # "mmsInfo":Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;
    :cond_1
    iget-object v4, v1, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;->subject:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/motorola/messaging/composer/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 311
    iget v4, v1, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;->priority:I

    invoke-virtual {p0, v4}, Lcom/motorola/messaging/composer/WorkingMessage;->setPriority(I)V

    .line 314
    iget-boolean v4, v1, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;->hasBccRecipients:Z

    if-nez v4, :cond_2

    move v4, v3

    :goto_1
    iput-boolean v4, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageGroupType:Z
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    iput-object p1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 322
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->syncTextFromSlideshow()V

    .line 323
    invoke-direct {p0, v2}, Lcom/motorola/messaging/composer/WorkingMessage;->correctAttachmentState(Z)V

    move v2, v3

    .line 324
    goto :goto_0

    :cond_2
    move v4, v2

    .line 314
    goto :goto_1

    .line 315
    .end local v1    # "mmsInfo":Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;
    :catch_0
    move-exception v0

    .line 316
    .local v0, "ex":Lcom/motorola/messaging/util/MmsException;
    const-string v3, "WorkingMessage"

    const-string v4, "Couldn\'t load uri"

    invoke-static {v3, v4, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private loadSignature()V
    .locals 4

    .prologue
    .line 447
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSignature:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 448
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsSignatureEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_key_enable_signature"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_key_message_signature"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "sigText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 454
    iput-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSignature:Ljava/lang/String;

    .line 462
    .end local v0    # "sigText":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    const-string v1, ""

    iput-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSignature:Ljava/lang/String;

    goto :goto_0
.end method

.method private makeSendReq(Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/CharSequence;I)Lcom/motorola/messaging/pdu/SendReq;
    .locals 6

    .prologue
    .line 1924
    invoke-virtual {p1}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/contact/ContactList;->getAddressesAsArray()[Ljava/lang/String;

    move-result-object v0

    .line 1926
    new-instance v1, Lcom/motorola/messaging/pdu/SendReq;

    invoke-direct {v1}, Lcom/motorola/messaging/pdu/SendReq;-><init>()V

    .line 1927
    invoke-static {v0}, Lcom/motorola/messaging/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v0

    .line 1928
    if-eqz v0, :cond_0

    .line 1929
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getGroupMessageTypeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasMultipleRecipients()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->isMessageGroupType()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1931
    invoke-virtual {v1, v0}, Lcom/motorola/messaging/pdu/SendReq;->setBcc([Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 1939
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1940
    new-instance v0, Lcom/motorola/messaging/pdu/EncodedStringValue;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->setSubject(Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 1943
    :cond_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsPriorityEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1945
    :try_start_0
    invoke-virtual {v1, p3}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->setPriority(I)V
    :try_end_0
    .catch Lcom/motorola/messaging/pdu/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1951
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 1953
    return-object v1

    .line 1932
    :cond_3
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsUseCCForRecipients()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1933
    invoke-virtual {v1, v0}, Lcom/motorola/messaging/pdu/SendReq;->setCc([Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    goto :goto_0

    .line 1935
    :cond_4
    invoke-virtual {v1, v0}, Lcom/motorola/messaging/pdu/SendReq;->setTo([Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    goto :goto_0

    .line 1946
    :catch_0
    move-exception v0

    .line 1947
    const-string v2, "WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when adding MMS Priority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private prepareForSave(Z)V
    .locals 1
    .param p1, "notify"    # Z

    .prologue
    .line 1163
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->syncWorkingRecipients()V

    .line 1165
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1166
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->ensureSmilModel()V

    .line 1167
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->syncTextToSlideshow()V

    .line 1168
    invoke-direct {p0, p1}, Lcom/motorola/messaging/composer/WorkingMessage;->removeSubjectIfEmpty(Z)V

    .line 1170
    :cond_0
    return-void
.end method

.method private static readDraftMmsMessage(Landroid/content/Context;J)Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1889
    sget-boolean v0, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1890
    const-string v0, "WorkingMessage"

    const-string v1, "readDraftMmsMessage tid=%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1893
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1897
    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/motorola/messaging/composer/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1901
    if-eqz v1, :cond_2

    .line 1903
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1904
    new-instance v5, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;-><init>(Lcom/motorola/messaging/composer/WorkingMessage$1;)V

    .line 1905
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v5, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;->uri:Landroid/net/Uri;

    .line 1907
    const/4 v0, 0x1

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/motorola/messaging/util/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;->subject:Ljava/lang/String;

    .line 1909
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/motorola/messaging/composer/WorkingMessage$MmsInfo;->priority:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1912
    :cond_1
    invoke-static {v1}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 1916
    :cond_2
    return-object v5

    .line 1912
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static readDraftSmsMessage(Landroid/content/Context;JLcom/motorola/messaging/conversation/Conversation;)Lcom/motorola/messaging/composer/WorkingMessage$SmsInfo;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2024
    sget-boolean v0, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 2025
    const-string v0, "WorkingMessage"

    const-string v1, "readDraftSmsMessage tid=%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2027
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2032
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_2

    .line 2052
    :cond_1
    :goto_0
    return-object v5

    .line 2036
    :cond_2
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2038
    sget-object v3, Lcom/motorola/messaging/composer/WorkingMessage;->SMS_DRAFT_PROJECTION:[Ljava/lang/String;

    const-string v4, "type=3"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2041
    if-eqz v1, :cond_1

    .line 2043
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2044
    new-instance v5, Lcom/motorola/messaging/composer/WorkingMessage$SmsInfo;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/motorola/messaging/composer/WorkingMessage$SmsInfo;-><init>(Lcom/motorola/messaging/composer/WorkingMessage$1;)V

    .line 2045
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/motorola/messaging/composer/WorkingMessage$SmsInfo;->body:Ljava/lang/String;

    .line 2046
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/motorola/messaging/composer/WorkingMessage$SmsInfo;->priority:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2049
    :cond_3
    invoke-static {v1}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method private removeSubjectIfEmpty(Z)V
    .locals 2
    .param p1, "notify"    # Z

    .prologue
    .line 1173
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasSubject()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1174
    iget-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasChanged:Z

    .line 1175
    .local v0, "hasChanged":Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/motorola/messaging/composer/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1177
    iput-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasChanged:Z

    .line 1179
    .end local v0    # "hasChanged":Z
    :cond_0
    return-void
.end method

.method private resetCurrentSmilModel()V
    .locals 1

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-eqz v0, :cond_0

    .line 2159
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v0}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    .line 2161
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    .line 2162
    return-void
.end method

.method private resetRecipientsAttributes()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1517
    iget-object v5, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 1518
    const/4 v0, 0x0

    .line 1519
    .local v0, "hasEmail":Z
    iget-object v5, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1520
    .local v2, "recipient":Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/messaging/contact/ContactUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2}, Lcom/motorola/messaging/contact/ContactUtils;->isAliasAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1521
    :cond_1
    const/4 v0, 0x1

    .line 1525
    .end local v2    # "recipient":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_3

    move v3, v4

    :cond_3
    invoke-direct {p0, v3, v0, v4}, Lcom/motorola/messaging/composer/WorkingMessage;->setRecipientsAttributes(ZZZ)V

    .line 1535
    .end local v0    # "hasEmail":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-void

    .line 1530
    :cond_4
    iget-object v5, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v5}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v4, :cond_5

    move v3, v4

    :cond_5
    iget-object v5, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v5}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/messaging/contact/ContactList;->containsEmailOrAlias()Z

    move-result v5

    invoke-direct {p0, v3, v5, v4}, Lcom/motorola/messaging/composer/WorkingMessage;->setRecipientsAttributes(ZZZ)V

    goto :goto_0
.end method

.method private sendMmsWorker(Lcom/motorola/messaging/conversation/Conversation;Landroid/net/Uri;Lcom/motorola/messaging/pdu/PduPersister;Lcom/motorola/messaging/model/SmilModel;Lcom/motorola/messaging/pdu/SendReq;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1838
    sget-boolean v0, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1839
    const-string v0, "WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMmsWorker: update draft MMS, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/motorola/messaging/conversation/Conversation;->setDraftState(Z)V

    .line 1845
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/motorola/messaging/composer/WorkingMessage;->createOrUpdateDraftMms(Lcom/motorola/messaging/conversation/Conversation;Landroid/net/Uri;Lcom/motorola/messaging/model/SmilModel;Lcom/motorola/messaging/pdu/SendReq;)Landroid/net/Uri;

    move-result-object v1

    .line 1846
    if-nez v1, :cond_1

    .line 1847
    const-string v0, "WorkingMessage"

    const-string v1, "sendMmsWorker: null URI, abort sending"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    :goto_0
    return-void

    .line 1851
    :cond_1
    new-instance v0, Lcom/motorola/messaging/transaction/MmsMessageSender;

    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p6, v1}, Lcom/motorola/messaging/transaction/MmsMessageSender;-><init>(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1853
    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/motorola/messaging/transaction/MessageSender;->sendMessage(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1856
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1860
    :cond_2
    invoke-static {}, Lcom/motorola/messaging/provider/Recycler;->getInstance()Lcom/motorola/messaging/provider/Recycler;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/motorola/messaging/provider/Recycler;->deleteOldMessagesByThread(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1867
    :goto_1
    sput-object v5, Lcom/motorola/messaging/composer/WorkingMessage;->mSendingTask:Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 1870
    invoke-virtual {p1}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/contact/RecipientIdCache;->updateNumbers(JLcom/motorola/messaging/contact/ContactList;)V

    .line 1871
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mStatusListener:Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;->onMessageSent()V

    goto :goto_0

    .line 1861
    :catch_0
    move-exception v0

    .line 1862
    const-string v2, "WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message, uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", exception="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendSmsWorker(Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1803
    sget-boolean v0, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1804
    const-string v0, "WorkingMessage"

    const-string v1, "sendSmsWorker mConversation=%s, conv=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1809
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/messaging/conversation/Conversation;->ensureThreadId()J

    move-result-wide v6

    .line 1810
    invoke-virtual {p1}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/contact/ContactList;->getAddressesAsArray()[Ljava/lang/String;

    move-result-object v2

    .line 1812
    new-instance v0, Lcom/motorola/messaging/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPriority:I

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsSmsReportState()Z

    move-result v5

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1815
    :try_start_0
    invoke-interface {v0, v6, v7}, Lcom/motorola/messaging/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1820
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/messaging/composer/WorkingMessage;->mSendingTask:Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 1822
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->clearPreviousThread()V

    .line 1825
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->clearDrafts()V

    .line 1828
    invoke-virtual {p1}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/contact/RecipientIdCache;->updateNumbers(JLcom/motorola/messaging/contact/ContactList;)V

    .line 1830
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mStatusListener:Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 1831
    return-void

    .line 1816
    :catch_0
    move-exception v0

    .line 1817
    const-string v1, "WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setRecipientsAttributes(ZZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1544
    sget-boolean v0, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1545
    const-string v0, "WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecipientsAttributes, hasMultipleRecipients="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hasEmail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notify="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->isMessageGroupType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1552
    invoke-direct {p0, v3, v3, p3}, Lcom/motorola/messaging/composer/WorkingMessage;->updateState(IZZ)V

    .line 1562
    :goto_0
    iput-boolean v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasChanged:Z

    .line 1563
    return-void

    .line 1554
    :cond_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isSmsEmailEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1555
    invoke-direct {p0, v3, p2, p3}, Lcom/motorola/messaging/composer/WorkingMessage;->updateState(IZZ)V

    goto :goto_0

    .line 1558
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0, p3}, Lcom/motorola/messaging/composer/WorkingMessage;->updateState(IZZ)V

    .line 1559
    invoke-direct {p0, v3, p2, p3}, Lcom/motorola/messaging/composer/WorkingMessage;->updateCombinedSmsEmailState(IZZ)V

    goto :goto_0
.end method

.method private setWorkingRecipients(Ljava/util/List;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1448
    sget-boolean v2, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 1449
    const-string v2, "WorkingMessage"

    const-string v3, "setWorkingRecipients"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    :cond_0
    iput-object p1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    .line 1455
    if-nez p1, :cond_2

    .line 1456
    :cond_1
    :goto_0
    invoke-direct {p0, v0, p2, p3}, Lcom/motorola/messaging/composer/WorkingMessage;->setRecipientsAttributes(ZZZ)V

    .line 1457
    return-void

    .line 1455
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private static stateString(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1628
    if-nez p0, :cond_0

    .line 1629
    const-string v0, "<none>"

    .line 1648
    :goto_0
    return-object v0

    .line 1631
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1632
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_1

    .line 1633
    const-string v1, "RECIPIENTS_REQUIRE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_2

    .line 1635
    const-string v1, "SUBJECT_REQUIRES_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_3

    .line 1637
    const-string v1, "ATTACHMENT_REQUIRES_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_4

    .line 1639
    const-string v1, "SEGMENT_LENGTH_REQUIRES_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_5

    .line 1641
    const-string v1, "FORCE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-lez v1, :cond_6

    .line 1643
    const-string v1, "COMBINED_SMS_EMAIL_STATES_REQUIRE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    :cond_6
    and-int/lit8 v1, p0, 0x40

    if-lez v1, :cond_7

    .line 1645
    const-string v1, "CHARACTER_COUNTER_REQUIRES_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1648
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private syncTextFromSlideshow()V
    .locals 3

    .prologue
    .line 1142
    const-string v1, ""

    iput-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 1145
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v1}, Lcom/motorola/messaging/model/SmilModel;->hasSimpleSlideshow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v0

    .line 1148
    .local v0, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->hasText()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1154
    .end local v0    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_0
    :goto_0
    return-void

    .line 1152
    .restart local v0    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_1
    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->getText()Lcom/motorola/messaging/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private syncTextToSlideshow()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1092
    iget-object v8, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasSlideshow()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasOnlyImmutableString()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    move v3, v6

    .line 1097
    .local v3, "hasValidText":Z
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasSubject()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasMMSAttachment()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->isAddingMedia()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_2
    move v2, v6

    .line 1099
    .local v2, "hasMmsContent":Z
    :goto_2
    if-nez v3, :cond_3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 1100
    :cond_3
    const/4 v4, 0x0

    .line 1104
    .local v4, "slide":Lcom/motorola/messaging/model/SlideModel;
    iget-object v6, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v6}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v6

    if-nez v6, :cond_4

    .line 1105
    new-instance v4, Lcom/motorola/messaging/model/SlideModel;

    .end local v4    # "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-direct {v4}, Lcom/motorola/messaging/model/SlideModel;-><init>()V

    .line 1107
    .restart local v4    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :try_start_0
    iget-object v6, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v6, v4}, Lcom/motorola/messaging/model/SmilModel;->addSlide(Lcom/motorola/messaging/model/SlideModel;)Z
    :try_end_0
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    :cond_4
    iget-object v6, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v6, v7}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v4

    .line 1116
    invoke-virtual {v4}, Lcom/motorola/messaging/model/SlideModel;->hasText()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1119
    :try_start_1
    new-instance v5, Lcom/motorola/messaging/model/TextModel;

    iget-object v6, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "text_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/motorola/messaging/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1120
    .local v5, "text":Lcom/motorola/messaging/model/TextModel;
    invoke-virtual {v4, v5}, Lcom/motorola/messaging/model/SlideModel;->add(Lcom/motorola/messaging/model/MediaModel;)V
    :try_end_1
    .catch Lcom/motorola/messaging/model/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1130
    :goto_3
    if-eqz v5, :cond_0

    .line 1131
    iget-object v6, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lcom/motorola/messaging/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v2    # "hasMmsContent":Z
    .end local v3    # "hasValidText":Z
    .end local v4    # "slide":Lcom/motorola/messaging/model/SlideModel;
    .end local v5    # "text":Lcom/motorola/messaging/model/TextModel;
    :cond_5
    move v3, v7

    .line 1096
    goto :goto_1

    .restart local v3    # "hasValidText":Z
    :cond_6
    move v2, v7

    .line 1097
    goto :goto_2

    .line 1108
    .restart local v2    # "hasMmsContent":Z
    .restart local v4    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :catch_0
    move-exception v0

    .line 1109
    .local v0, "e":Lcom/motorola/messaging/model/ContentRestrictionException;
    const-string v6, "WorkingMessage"

    const-string v7, "Failed to add slide"

    invoke-static {v6, v7, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1121
    .end local v0    # "e":Lcom/motorola/messaging/model/ContentRestrictionException;
    :catch_1
    move-exception v1

    .line 1122
    .local v1, "ex":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    const-string v6, "WorkingMessage"

    const-string v7, "Failed to add slide"

    invoke-static {v6, v7, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1127
    .end local v1    # "ex":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    :cond_7
    invoke-virtual {v4}, Lcom/motorola/messaging/model/SlideModel;->getText()Lcom/motorola/messaging/model/TextModel;

    move-result-object v5

    .restart local v5    # "text":Lcom/motorola/messaging/model/TextModel;
    goto :goto_3
.end method

.method private updateCombinedSmsEmailState(IZZ)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "on"    # Z
    .param p3, "notify"    # Z

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x1

    .line 1710
    if-eqz p2, :cond_0

    .line 1711
    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmsEmailCombinedState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmsEmailCombinedState:I

    .line 1716
    :goto_0
    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmsEmailCombinedState:I

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmsEmailCombinedState:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_1

    .line 1717
    invoke-direct {p0, v3, v2, p3}, Lcom/motorola/messaging/composer/WorkingMessage;->updateState(IZZ)V

    .line 1721
    :goto_1
    return-void

    .line 1713
    :cond_0
    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmsEmailCombinedState:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmsEmailCombinedState:I

    goto :goto_0

    .line 1719
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0, p3}, Lcom/motorola/messaging/composer/WorkingMessage;->updateState(IZZ)V

    goto :goto_1
.end method

.method private updateState(IZZ)V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1659
    sget-boolean v0, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1660
    const-string v0, "WorkingMessage"

    const-string v3, "updateState"

    invoke-static {v0, v1, v1, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 1663
    :cond_0
    iget v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    .line 1664
    if-eqz p2, :cond_a

    .line 1665
    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    .line 1672
    :goto_0
    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    if-ne v0, v5, :cond_1

    and-int/lit8 v0, v3, -0x11

    if-lez v0, :cond_1

    .line 1673
    iput v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    .line 1683
    :cond_1
    if-nez v3, :cond_2

    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, -0x11

    if-gtz v0, :cond_4

    :cond_2
    and-int/lit8 v0, v3, -0x11

    if-lez v0, :cond_3

    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    if-eqz v0, :cond_4

    :cond_3
    if-ne v3, v5, :cond_d

    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, -0x11

    if-lez v0, :cond_d

    :cond_4
    move v0, v1

    .line 1691
    :goto_1
    if-nez v3, :cond_5

    iget v4, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    if-nez v4, :cond_6

    :cond_5
    if-eqz v3, :cond_7

    iget v4, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    if-nez v4, :cond_7

    .line 1693
    :cond_6
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->adjustPriority()V

    .line 1696
    :cond_7
    if-eqz p3, :cond_8

    if-eqz v0, :cond_8

    .line 1697
    iget-object v4, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mStatusListener:Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;

    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    if-eqz v0, :cond_b

    move v0, v1

    :goto_2
    invoke-interface {v4, v0, p1}, Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;->onProtocolChanged(ZI)V

    .line 1700
    :cond_8
    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    if-eq v3, v0, :cond_9

    .line 1701
    sget-boolean v0, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v0, :cond_9

    .line 1702
    const-string v3, "WorkingMessage"

    const-string v4, "updateState: %s%s = %s"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    if-eqz p2, :cond_c

    const-string v0, "+"

    :goto_3
    aput-object v0, v5, v2

    invoke-static {p1}, Lcom/motorola/messaging/composer/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    iget v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    invoke-static {v1}, Lcom/motorola/messaging/composer/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1707
    :cond_9
    return-void

    .line 1667
    :cond_a
    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v0, v4

    iput v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    goto :goto_0

    :cond_b
    move v0, v2

    .line 1697
    goto :goto_2

    .line 1702
    :cond_c
    const-string v0, "-"

    goto :goto_3

    :cond_d
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public addSignature()V
    .locals 2

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->loadSignature()V

    .line 470
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSignature:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->buildInitialSignature()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->buildInitialSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public copyWorkingRecipients(Lcom/motorola/messaging/composer/WorkingMessage;)V
    .locals 3
    .param p1, "oldMessage"    # Lcom/motorola/messaging/composer/WorkingMessage;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2238
    iget-object v2, p1, Lcom/motorola/messaging/composer/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 2239
    iget v2, p1, Lcom/motorola/messaging/composer/WorkingMessage;->mSmsEmailCombinedState:I

    if-le v2, v0, :cond_1

    iget v2, p1, Lcom/motorola/messaging/composer/WorkingMessage;->mSmsEmailCombinedState:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_1

    .line 2242
    .local v0, "hasEmail":Z
    :goto_0
    iget-object v2, p1, Lcom/motorola/messaging/composer/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    invoke-direct {p0, v2, v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->setWorkingRecipients(Ljava/util/List;ZZ)V

    .line 2244
    .end local v0    # "hasEmail":Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2239
    goto :goto_0
.end method

.method public discard()V
    .locals 2

    .prologue
    .line 1311
    sget-boolean v0, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1312
    const-string v0, "WorkingMessage"

    const-string v1, "discard"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1327
    :goto_0
    return-void

    .line 1320
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mDiscarded:Z

    .line 1322
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-eqz v0, :cond_2

    .line 1323
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v0}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    .line 1326
    :cond_2
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->clearDrafts()V

    goto :goto_0
.end method

.method public exceedsMsgSizeLimit()Z
    .locals 2

    .prologue
    .line 960
    const/4 v0, 0x0

    .line 962
    .local v0, "result":Z
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v1}, Lcom/motorola/messaging/model/SmilModel;->exceedsMsgSizeLimit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    const/4 v0, 0x1

    .line 967
    :cond_0
    return v0
.end method

.method public getAttachmentType()I
    .locals 1

    .prologue
    .line 990
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->isAddingMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    const/4 v0, -0x1

    .line 993
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mAttachmentType:I

    goto :goto_0
.end method

.method public getCurrentNonTextSmilSize()I
    .locals 2

    .prologue
    .line 1791
    const/4 v0, 0x0

    .line 1793
    .local v0, "currentSize":I
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-eqz v1, :cond_0

    .line 1794
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v1}, Lcom/motorola/messaging/model/SmilModel;->getNonTextMediaSize()I

    move-result v0

    .line 1797
    :cond_0
    return v0
.end method

.method public getMmsMessageId()J
    .locals 3

    .prologue
    .line 2252
    const-wide/16 v0, 0x0

    .line 2255
    .local v0, "messageId":J
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->requiresMms()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 2256
    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2259
    :cond_0
    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 1084
    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPriority:I

    return v0
.end method

.method public getRecipientCount()I
    .locals 4

    .prologue
    .line 1475
    const/4 v0, 0x0

    .line 1476
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1477
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1483
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 1484
    const-string v1, "WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumRecipients OUT, num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    :cond_1
    return v0

    .line 1479
    :cond_2
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v1}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->loadSignature()V

    .line 485
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSmilModel()Lcom/motorola/messaging/model/SmilModel;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    return-object v0
.end method

.method public getSubject()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasMMSAttachment()Z
    .locals 1

    .prologue
    .line 946
    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mAttachmentType:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMultipleRecipients()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1460
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->getRecipientCount()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 1462
    :goto_0
    sget-boolean v1, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 1463
    const-string v1, "WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasMultipleRecipients, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    :cond_0
    return v0

    .line 1460
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnlyImmutableString()Z
    .locals 5

    .prologue
    .line 734
    const/4 v2, 0x0

    .line 735
    .local v2, "result":Z
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "currentText":Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 740
    .local v1, "invalidRecipientsString":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/motorola/messaging/composer/WorkingMessage;->hasOnlySignature(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 742
    :cond_0
    const/4 v2, 0x1

    .line 744
    :cond_1
    return v2
.end method

.method public hasOnlySignature(Z)Z
    .locals 1
    .param p1, "ignoreWhiteSpaces"    # Z

    .prologue
    .line 678
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/motorola/messaging/composer/WorkingMessage;->hasOnlySignature(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasSlideshow()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 975
    iget v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mAttachmentType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 981
    :cond_0
    :goto_0
    return v0

    .line 977
    :cond_1
    iget v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mAttachmentType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 978
    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v2}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v2

    if-gt v2, v1, :cond_2

    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v2}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v2}, Lcom/motorola/messaging/model/SmilModel;->hasSimpleSlideshow()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAddingMedia()Z
    .locals 1

    .prologue
    .line 668
    iget-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mIsAddingMedia:Z

    return v0
.end method

.method public isDiscarded()Z
    .locals 1

    .prologue
    .line 1357
    iget-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mDiscarded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mInternallyDiscarded:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingDrafts()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mLoading:Z

    return v0
.end method

.method public isMessageGroupType()Z
    .locals 1

    .prologue
    .line 1538
    iget-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageGroupType:Z

    return v0
.end method

.method public isWorthSaving()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 705
    sget-boolean v1, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 706
    const-string v1, "WorkingMessage"

    const-string v2, "isWorthSaving"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasMMSAttachment()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasSubject()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasSlideshow()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->isAddingMedia()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 727
    :cond_1
    :goto_0
    return v0

    .line 716
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasText()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasOnlyImmutableString()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 723
    :cond_3
    iget v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    and-int/lit8 v1, v1, 0x10

    if-gtz v1, :cond_1

    .line 727
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readStateFromBundle(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1402
    if-nez p1, :cond_0

    .line 1435
    :goto_0
    return-void

    .line 1406
    :cond_0
    const-string v0, "subject"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1407
    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1409
    const-string v0, "mms_state"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    .line 1411
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1412
    const-string v0, "msg_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1414
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/motorola/messaging/model/SmilModel;->readStateFromBundle(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v0

    .line 1416
    if-eqz v0, :cond_1

    .line 1417
    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->setSmilModel(Lcom/motorola/messaging/model/SmilModel;Z)V

    .line 1429
    :cond_1
    :goto_1
    const-string v0, "priority"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPriority:I

    .line 1431
    const-string v0, "is_group_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageGroupType:Z

    .line 1434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasChanged:Z

    goto :goto_0

    .line 1420
    :cond_2
    const-string v0, "sms_body"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1421
    iput-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 1423
    const-string v0, "msg_uri_to_delete"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1424
    if-eqz v0, :cond_1

    .line 1425
    invoke-direct {p0, v0, v2, v2}, Lcom/motorola/messaging/composer/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public removeMmsForcedState()V
    .locals 3

    .prologue
    .line 649
    const/16 v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/messaging/composer/WorkingMessage;->updateState(IZZ)V

    .line 650
    return-void
.end method

.method public requiresMMSForLength()Z
    .locals 1

    .prologue
    .line 1619
    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x8

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresMMSOnlyForSMSEmail()Z
    .locals 1

    .prologue
    .line 1624
    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, -0x21

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresMms()Z
    .locals 1

    .prologue
    .line 1611
    iget v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveAsMms()Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1212
    sget-boolean v1, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 1213
    const-string v1, "WorkingMessage"

    const-string v2, "saveAsMms mConversation=%s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->isDiscarded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1217
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "save() called on discarded message"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1221
    :cond_1
    iget-boolean v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasChanged:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 1222
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1242
    :goto_0
    return-object v1

    .line 1229
    :cond_2
    const/16 v1, 0x10

    invoke-direct {p0, v1, v5, v6}, Lcom/motorola/messaging/composer/WorkingMessage;->updateState(IZZ)V

    .line 1232
    invoke-direct {p0, v5}, Lcom/motorola/messaging/composer/WorkingMessage;->prepareForSave(Z)V

    .line 1234
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    const/16 v3, 0x81

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/messaging/composer/WorkingMessage;->makeSendReq(Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/CharSequence;I)Lcom/motorola/messaging/pdu/SendReq;

    move-result-object v0

    .line 1236
    .local v0, "sendReq":Lcom/motorola/messaging/pdu/SendReq;
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/motorola/messaging/composer/WorkingMessage;->createOrUpdateDraftMms(Lcom/motorola/messaging/conversation/Conversation;Landroid/net/Uri;Lcom/motorola/messaging/model/SmilModel;Lcom/motorola/messaging/pdu/SendReq;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1237
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v1, v5}, Lcom/motorola/messaging/conversation/Conversation;->setDraftState(Z)V

    .line 1240
    iput-boolean v6, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasChanged:Z

    .line 1242
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public saveDraft()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1250
    sget-boolean v1, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 1251
    const-string v1, "WorkingMessage"

    const-string v2, "saveDraft"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->isDiscarded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1308
    :cond_1
    :goto_0
    return-void

    .line 1260
    :cond_2
    iget-boolean v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasChanged:Z

    if-eqz v1, :cond_1

    .line 1265
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    if-nez v1, :cond_3

    .line 1266
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "saveDraft() called with no conversation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1269
    :cond_3
    new-instance v0, Lcom/motorola/messaging/composer/WorkingMessage$2;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/composer/WorkingMessage$2;-><init>(Lcom/motorola/messaging/composer/WorkingMessage;)V

    .line 1296
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/motorola/messaging/concurrent/TaskManager;->hasConflict(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1297
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "save_drafts"

    invoke-virtual {v1, v0, v3, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;ILjava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 1304
    :goto_1
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v1, v3}, Lcom/motorola/messaging/conversation/Conversation;->setDraftState(Z)V

    .line 1307
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasChanged:Z

    goto :goto_0

    .line 1300
    :cond_4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public send()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1729
    sget-boolean v0, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1730
    const-string v0, "WorkingMessage"

    const-string v1, "send"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    :cond_0
    invoke-direct {p0, v8}, Lcom/motorola/messaging/composer/WorkingMessage;->prepareForSave(Z)V

    .line 1737
    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    .line 1738
    iget-object v5, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    .line 1740
    if-eqz v5, :cond_1

    .line 1742
    invoke-virtual {v5}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    .line 1748
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1752
    iget-object v3, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1753
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v4

    .line 1755
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPriority:I

    invoke-direct {p0, v2, v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->makeSendReq(Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/CharSequence;I)Lcom/motorola/messaging/pdu/SendReq;

    move-result-object v6

    .line 1756
    iget v7, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPriority:I

    .line 1760
    invoke-virtual {v5}, Lcom/motorola/messaging/model/SmilModel;->prepareToSend()V

    .line 1762
    new-instance v0, Lcom/motorola/messaging/composer/WorkingMessage$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/messaging/composer/WorkingMessage$3;-><init>(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;Landroid/net/Uri;Lcom/motorola/messaging/pdu/PduPersister;Lcom/motorola/messaging/model/SmilModel;Lcom/motorola/messaging/pdu/SendReq;I)V

    .line 1778
    :goto_0
    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mStatusListener:Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;

    invoke-interface {v1}, Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 1781
    iput-boolean v8, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mInternallyDiscarded:Z

    .line 1784
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "send_msg"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/composer/WorkingMessage;->mSendingTask:Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 1785
    return-void

    .line 1769
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1771
    new-instance v0, Lcom/motorola/messaging/composer/WorkingMessage$4;

    invoke-direct {v0, p0, v2, v1}, Lcom/motorola/messaging/composer/WorkingMessage$4;-><init>(Lcom/motorola/messaging/composer/WorkingMessage;Lcom/motorola/messaging/conversation/Conversation;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAddingMedia(Z)V
    .locals 1
    .param p1, "addingMedia"    # Z

    .prologue
    .line 658
    iput-boolean p1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mIsAddingMedia:Z

    .line 661
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mStatusListener:Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;->onAttachmentChanged()V

    .line 662
    return-void
.end method

.method public setCharacterCount(I)V
    .locals 3
    .param p1, "characterCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 1582
    const/16 v2, 0x40

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSMSCharacterLimitAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasNon7BitEncoding:Z

    invoke-static {v0}, Lcom/motorola/messaging/settings/MessageSettings;->getSMSCharacterLimit(Z)I

    move-result v0

    if-le p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v2, v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->updateState(IZZ)V

    .line 1585
    iput-boolean v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasChanged:Z

    .line 1586
    return-void

    .line 1582
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConversation(Lcom/motorola/messaging/conversation/Conversation;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1494
    sget-boolean v2, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 1495
    const-string v2, "WorkingMessage"

    const-string v3, "setConversation %s -> %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    aput-object v5, v4, v1

    aput-object p1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1498
    :cond_0
    iput-object p1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    .line 1501
    invoke-virtual {p1}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    :goto_0
    invoke-virtual {p1}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/messaging/contact/ContactList;->containsEmailOrAlias()Z

    move-result v2

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->setRecipientsAttributes(ZZZ)V

    .line 1505
    return-void

    :cond_1
    move v0, v1

    .line 1501
    goto :goto_0
.end method

.method public setHasNon7BitEncoding(ZZ)V
    .locals 1
    .param p1, "hasNon7BitEncoding"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 1596
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsForce7BitEncoding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1598
    iput-boolean p1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasNon7BitEncoding:Z

    .line 1600
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsEmailConvertToMmsOnNon7BitEncodingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1601
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/motorola/messaging/composer/WorkingMessage;->updateCombinedSmsEmailState(IZZ)V

    .line 1602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasChanged:Z

    .line 1605
    :cond_0
    return-void
.end method

.method public setMMSAttachment(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 8
    .param p1, "type"    # I
    .param p2, "dataUri"    # Landroid/net/Uri;
    .param p3, "mediaSrc"    # Ljava/lang/String;
    .param p4, "mediaData"    # Ljava/lang/String;
    .param p5, "append"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 550
    sget-boolean v2, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 551
    const-string v2, "WorkingMessage"

    const-string v3, "setMMSAttachment type=%d uri= %s mediaSrc=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p2, v4, v6

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v2, v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    :cond_0
    const/4 v1, 0x0

    .line 554
    .local v1, "result":I
    iput-boolean v6, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasChanged:Z

    .line 557
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->ensureSmilModel()V

    .line 562
    if-eqz p5, :cond_4

    .line 563
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/composer/WorkingMessage;->appendMedia(ILandroid/net/Uri;)I
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/messaging/model/RestrictedModeNonCoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/motorola/messaging/model/RestrictedModeResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/motorola/messaging/model/RestrictedModeExceedSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/motorola/messaging/model/RestrictedModeUnsupportedContentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/motorola/messaging/model/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/motorola/messaging/model/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/motorola/messaging/model/ResolutionException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_8

    move-result v1

    .line 598
    :goto_0
    if-nez v1, :cond_5

    .line 600
    if-eqz p5, :cond_1

    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v2}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v2

    if-le v2, v6, :cond_1

    .line 601
    const/4 p1, 0x4

    .line 603
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasOnlyImmutableString()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 604
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/composer/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 609
    :cond_1
    iget v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mAttachmentType:I

    if-eq v2, p1, :cond_2

    .line 610
    iput p1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mAttachmentType:I

    .line 611
    iget-boolean v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mIsAddingMedia:Z

    if-nez v2, :cond_2

    .line 613
    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mStatusListener:Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;

    invoke-interface {v2}, Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;->onAttachmentChanged()V

    .line 625
    :cond_2
    :goto_1
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasMMSAttachment()Z

    move-result v3

    invoke-direct {p0, v2, v3, v6}, Lcom/motorola/messaging/composer/WorkingMessage;->updateState(IZZ)V

    .line 627
    sget-boolean v2, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v2, :cond_3

    .line 628
    const-string v2, "WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMMSAttachment, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_3
    return v1

    .line 565
    :cond_4
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/composer/WorkingMessage;->changeMedia(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/motorola/messaging/model/RestrictedModeNonCoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/motorola/messaging/model/RestrictedModeResolutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/motorola/messaging/model/RestrictedModeExceedSizeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/motorola/messaging/model/RestrictedModeUnsupportedContentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/motorola/messaging/model/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/motorola/messaging/model/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/motorola/messaging/model/ResolutionException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v2, "WorkingMessage"

    const-string v3, "unknown errror"

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    const/4 v1, -0x1

    .line 594
    goto :goto_0

    .line 570
    .end local v0    # "e":Lcom/motorola/messaging/util/MmsException;
    :catch_1
    move-exception v0

    .line 571
    .local v0, "e":Lcom/motorola/messaging/model/RestrictedModeNonCoreException;
    const-string v2, "WorkingMessage"

    const-string v3, "MMS non core type"

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 572
    const/4 v1, -0x6

    .line 594
    goto :goto_0

    .line 573
    .end local v0    # "e":Lcom/motorola/messaging/model/RestrictedModeNonCoreException;
    :catch_2
    move-exception v0

    .line 574
    .local v0, "e":Lcom/motorola/messaging/model/RestrictedModeResolutionException;
    const-string v2, "WorkingMessage"

    const-string v3, "MMS non core type (resolution)"

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 575
    const/4 v1, -0x6

    .line 594
    goto :goto_0

    .line 576
    .end local v0    # "e":Lcom/motorola/messaging/model/RestrictedModeResolutionException;
    :catch_3
    move-exception v0

    .line 577
    .local v0, "e":Lcom/motorola/messaging/model/RestrictedModeExceedSizeException;
    const-string v2, "WorkingMessage"

    const-string v3, "MMS non core type (size exceeded)"

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 578
    const/4 v1, -0x6

    .line 594
    goto :goto_0

    .line 579
    .end local v0    # "e":Lcom/motorola/messaging/model/RestrictedModeExceedSizeException;
    :catch_4
    move-exception v0

    .line 580
    .local v0, "e":Lcom/motorola/messaging/model/RestrictedModeUnsupportedContentException;
    const-string v2, "WorkingMessage"

    const-string v3, "MMS unsupported content type for restricted mode"

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 581
    const/4 v1, -0x6

    .line 594
    goto/16 :goto_0

    .line 582
    .end local v0    # "e":Lcom/motorola/messaging/model/RestrictedModeUnsupportedContentException;
    :catch_5
    move-exception v0

    .line 583
    .local v0, "e":Lcom/motorola/messaging/model/UnsupportContentTypeException;
    const-string v2, "WorkingMessage"

    const-string v3, "MMS unsupported content type"

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 584
    const/4 v1, -0x3

    .line 594
    goto/16 :goto_0

    .line 585
    .end local v0    # "e":Lcom/motorola/messaging/model/UnsupportContentTypeException;
    :catch_6
    move-exception v0

    .line 586
    .local v0, "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    const-string v2, "WorkingMessage"

    const-string v3, "MMS size exceeded"

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 587
    const/4 v1, -0x2

    .line 594
    goto/16 :goto_0

    .line 588
    .end local v0    # "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    :catch_7
    move-exception v0

    .line 589
    .local v0, "e":Lcom/motorola/messaging/model/ResolutionException;
    const-string v2, "WorkingMessage"

    const-string v3, "unsupported resolution"

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 590
    const/4 v1, -0x4

    .line 594
    goto/16 :goto_0

    .line 591
    .end local v0    # "e":Lcom/motorola/messaging/model/ResolutionException;
    :catch_8
    move-exception v0

    .line 592
    .local v0, "e":Lcom/motorola/messaging/model/ContentRestrictionException;
    const-string v2, "WorkingMessage"

    const-string v3, "unsupported content"

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 593
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 619
    .end local v0    # "e":Lcom/motorola/messaging/model/ContentRestrictionException;
    :cond_5
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->isMMSStateForced()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 620
    const/16 v2, 0x10

    invoke-direct {p0, v2, v7, v6}, Lcom/motorola/messaging/composer/WorkingMessage;->updateState(IZZ)V

    goto/16 :goto_1
.end method

.method public setMMSAttachment(ILandroid/net/Uri;Ljava/lang/String;Z)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "dataUri"    # Landroid/net/Uri;
    .param p3, "mediaSrc"    # Ljava/lang/String;
    .param p4, "append"    # Z

    .prologue
    .line 535
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/messaging/composer/WorkingMessage;->setMMSAttachment(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public setMMSAttachment(ILandroid/net/Uri;Z)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "dataUri"    # Landroid/net/Uri;
    .param p3, "append"    # Z

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/motorola/messaging/composer/WorkingMessage;->setMMSAttachment(ILandroid/net/Uri;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public setMessageGroupType(Z)V
    .locals 1
    .param p1, "isMessageGroupType"    # Z

    .prologue
    .line 1508
    iget-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageGroupType:Z

    if-ne v0, p1, :cond_0

    .line 1514
    :goto_0
    return-void

    .line 1511
    :cond_0
    iput-boolean p1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageGroupType:Z

    .line 1513
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->resetRecipientsAttributes()V

    goto :goto_0
.end method

.method public setPriority(I)V
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 1034
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsPriorityEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    iput p1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPriority:I

    .line 1036
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->adjustPriority()V

    .line 1037
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasChanged:Z

    .line 1039
    :cond_0
    return-void
.end method

.method public setSegmentCount(I)V
    .locals 4
    .param p1, "segmentCount"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1569
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsEmailConvertToMmsOnMultipleSegmentsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1570
    const/4 v3, 0x4

    if-le p1, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v0, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->updateCombinedSmsEmailState(IZZ)V

    .line 1572
    :cond_0
    const/16 v0, 0x8

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsThreshold()I

    move-result v3

    if-le p1, v3, :cond_1

    move v2, v1

    :cond_1
    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/messaging/composer/WorkingMessage;->updateState(IZZ)V

    .line 1573
    iput-boolean v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasChanged:Z

    .line 1574
    return-void

    :cond_2
    move v0, v2

    .line 1570
    goto :goto_0
.end method

.method public setSmilModel(Lcom/motorola/messaging/model/SmilModel;Z)V
    .locals 1
    .param p1, "model"    # Lcom/motorola/messaging/model/SmilModel;
    .param p2, "notify"    # Z

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-eqz v0, :cond_0

    .line 2212
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v0}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    .line 2215
    :cond_0
    if-eqz p1, :cond_1

    .line 2217
    invoke-virtual {p1, p1}, Lcom/motorola/messaging/model/Model;->registerModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    .line 2221
    :cond_1
    iput-object p1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    .line 2224
    invoke-direct {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->syncTextFromSlideshow()V

    .line 2225
    invoke-direct {p0, p2}, Lcom/motorola/messaging/composer/WorkingMessage;->correctAttachmentState(Z)V

    .line 2228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasChanged:Z

    .line 2229
    return-void
.end method

.method public setSubject(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "notify"    # Z

    .prologue
    .line 1005
    sget-boolean v0, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1006
    const-string v0, "WorkingMessage"

    const-string v1, "setSubject"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :cond_0
    iput-object p1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    .line 1010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasChanged:Z

    .line 1011
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasSubject()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/messaging/composer/WorkingMessage;->updateState(IZZ)V

    .line 1012
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    iput-object p1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasChanged:Z

    .line 496
    :cond_0
    return-void
.end method

.method public setWorkingRecipients(Ljava/util/List;Z)V
    .locals 1
    .param p2, "hasEmail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1443
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/messaging/composer/WorkingMessage;->setWorkingRecipients(Ljava/util/List;ZZ)V

    .line 1444
    return-void
.end method

.method public syncWorkingRecipients()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1185
    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1186
    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v2}, Lcom/motorola/messaging/conversation/Conversation;->getRecipients()Lcom/motorola/messaging/contact/ContactList;

    move-result-object v0

    .line 1189
    .local v0, "currentRecipients":Lcom/motorola/messaging/contact/ContactList;
    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/contact/ContactList;->matches(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1190
    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/motorola/messaging/contact/ContactList;->getByNumbers(Ljava/lang/Iterable;ZZ)Lcom/motorola/messaging/contact/ContactList;

    move-result-object v1

    .line 1198
    .local v1, "recipients":Lcom/motorola/messaging/contact/ContactList;
    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v2}, Lcom/motorola/messaging/conversation/Conversation;->getThreadId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPreviousThreadId:J

    .line 1200
    iget-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mConversation:Lcom/motorola/messaging/conversation/Conversation;

    invoke-virtual {v2, v1}, Lcom/motorola/messaging/conversation/Conversation;->setRecipients(Lcom/motorola/messaging/contact/ContactList;)V

    .line 1201
    iput-boolean v4, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mHasChanged:Z

    .line 1203
    .end local v1    # "recipients":Lcom/motorola/messaging/contact/ContactList;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    .line 1205
    .end local v0    # "currentRecipients":Lcom/motorola/messaging/contact/ContactList;
    :cond_1
    return-void
.end method

.method public unDiscard()V
    .locals 2

    .prologue
    .line 1346
    sget-boolean v0, Lcom/motorola/messaging/composer/WorkingMessage;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1347
    const-string v0, "WorkingMessage"

    const-string v1, "unDiscard"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mDiscarded:Z

    .line 1351
    return-void
.end method

.method public writeStateToBundle(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1367
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    const-string v0, "subject"

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    :cond_0
    const-string v0, "mms_state"

    iget v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMmsState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1373
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1374
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 1375
    const-string v0, "msg_uri"

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1377
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-eqz v0, :cond_2

    .line 1378
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/model/SmilModel;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 1392
    :cond_2
    :goto_0
    const-string v0, "priority"

    iget v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mPriority:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1393
    const-string v0, "is_group_message"

    iget-boolean v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageGroupType:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1394
    return-void

    .line 1382
    :cond_3
    const-string v0, "sms_body"

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v0, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 1388
    const-string v0, "msg_uri_to_delete"

    iget-object v1, p0, Lcom/motorola/messaging/composer/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method
