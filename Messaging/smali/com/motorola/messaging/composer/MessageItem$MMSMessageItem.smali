.class Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;
.super Lcom/motorola/messaging/composer/MessageItem;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/composer/MessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MMSMessageItem"
.end annotation


# instance fields
.field private mCursorDeliveryReport:Ljava/lang/String;

.field private mDownloadState:I

.field private mErrorType:I

.field private mMMSType:I

.field private mMediaType:I

.field private mMessageSize:I

.field private mMessageUri:Landroid/net/Uri;

.field private mSmilModel:Lcom/motorola/messaging/model/SmilModel;

.field private mSubject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/regex/Pattern;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "highlight"    # Ljava/util/regex/Pattern;

    .prologue
    .line 977
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/motorola/messaging/composer/MessageItem;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/regex/Pattern;Lcom/motorola/messaging/composer/MessageItem$1;)V

    .line 947
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMessageSize:I

    .line 962
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMediaType:I

    .line 978
    sget-boolean v0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 979
    const-string v0, "MMSMessageItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing. Id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mMsgId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    :cond_0
    invoke-direct {p0, p2}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->fullyInit(Landroid/database/Cursor;)V

    .line 982
    return-void
.end method

.method static synthetic access$400(Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    .prologue
    .line 937
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    .prologue
    .line 937
    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mDownloadState:I

    return v0
.end method

.method static synthetic access$600(Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    .prologue
    .line 937
    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mErrorType:I

    return v0
.end method

.method static synthetic access$602(Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;
    .param p1, "x1"    # I

    .prologue
    .line 937
    iput p1, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mErrorType:I

    return p1
.end method

.method static synthetic access$700(Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;

    .prologue
    .line 937
    invoke-direct {p0}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->initDeliveryReport()V

    return-void
.end method

.method private buildBodyAndSubject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1415
    const/4 v1, 0x0

    .line 1416
    .local v1, "hasSubject":Z
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1417
    .local v0, "buf":Landroid/text/SpannableStringBuilder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1418
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1419
    # getter for: Lcom/motorola/messaging/composer/MessageItem;->mSubjectSpan:Landroid/text/style/StyleSpan;
    invoke-static {}, Lcom/motorola/messaging/composer/MessageItem;->access$1200()Landroid/text/style/StyleSpan;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1420
    const/4 v1, 0x1

    .line 1422
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1423
    if-eqz v1, :cond_1

    .line 1424
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1426
    :cond_1
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1428
    :cond_2
    invoke-virtual {p0, v0}, Lcom/motorola/messaging/composer/MessageItem;->addUrgentMark(Landroid/text/SpannableStringBuilder;)V

    .line 1429
    return-object v0
.end method

.method private fullyInit(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v3, 0x0

    .line 1350
    # getter for: Lcom/motorola/messaging/composer/MessageItem;->mLoadingString:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/composer/MessageItem;->access$800()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    .line 1352
    iput-wide v3, p0, Lcom/motorola/messaging/composer/MessageItem;->mRawTimeStamp:J

    .line 1354
    iput-wide v3, p0, Lcom/motorola/messaging/composer/MessageItem;->mRawDateSent:J

    .line 1356
    const/16 v2, 0x11

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mBoxId:I

    .line 1358
    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/motorola/messaging/composer/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMessageUri:Landroid/net/Uri;

    .line 1360
    const/16 v2, 0x10

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMMSType:I

    .line 1362
    const/16 v2, 0x14

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mErrorType:I

    .line 1364
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mIsProtected:Z

    .line 1366
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1367
    .local v0, "subject":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1368
    new-instance v1, Lcom/motorola/messaging/pdu/EncodedStringValue;

    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v0}, Lcom/motorola/messaging/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(I[B)V

    .line 1371
    .local v1, "v":Lcom/motorola/messaging/pdu/EncodedStringValue;
    invoke-virtual {v1}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mSubject:Ljava/lang/String;

    .line 1374
    .end local v1    # "v":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :cond_0
    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mCursorDeliveryReport:Ljava/lang/String;

    .line 1375
    return-void

    .line 1364
    .end local v0    # "subject":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initDeliveryReport()V
    .locals 5

    .prologue
    .line 1096
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mCursorDeliveryReport:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mAddress:Ljava/lang/String;

    # getter for: Lcom/motorola/messaging/composer/MessageItem;->mSenderSelfString:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/composer/MessageItem;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1098
    :cond_0
    sget-object v2, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->NONE:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    .line 1137
    :goto_0
    sget-boolean v2, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 1138
    const-string v2, "MMSMessageItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS deliveryStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    :cond_1
    return-void

    .line 1102
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mCursorDeliveryReport:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1103
    .local v1, "reportInt":I
    const/16 v2, 0x80

    if-ne v1, v2, :cond_3

    .line 1109
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/motorola/messaging/composer/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Lcom/motorola/messaging/composer/StatusReportUtils;->getCombinedDeliveryStatus(Landroid/content/Context;J)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1124
    const-string v2, "MMSMessageItem"

    const-string v3, "NONE delivery status when delivery report requested."

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    sget-object v2, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->NONE:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1131
    .end local v1    # "reportInt":I
    :catch_0
    move-exception v0

    .line 1132
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string v2, "MMSMessageItem"

    const-string v3, "Value for delivery report was invalid."

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    sget-object v2, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->NONE:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    goto :goto_0

    .line 1111
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v1    # "reportInt":I
    :pswitch_0
    :try_start_1
    sget-object v2, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->FAILED:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    goto :goto_0

    .line 1114
    :pswitch_1
    sget-object v2, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->REJECTED:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    goto :goto_0

    .line 1117
    :pswitch_2
    sget-object v2, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->PENDING:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    goto :goto_0

    .line 1120
    :pswitch_3
    sget-object v2, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->RECEIVED:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    goto :goto_0

    .line 1129
    :cond_3
    sget-object v2, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->NONE:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private initThumbnail()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1143
    iget v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMediaType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1144
    iget-object v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v3, v5}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v1

    .line 1145
    .local v1, "slide":Lcom/motorola/messaging/model/SlideModel;
    if-eqz v1, :cond_0

    .line 1146
    invoke-virtual {v1}, Lcom/motorola/messaging/model/SlideModel;->getImage()Lcom/motorola/messaging/model/ImageModel;

    move-result-object v0

    .line 1147
    .local v0, "image":Lcom/motorola/messaging/model/ImageModel;
    invoke-virtual {v0}, Lcom/motorola/messaging/model/ImageModel;->preFetchThumbnail()V

    .line 1156
    .end local v0    # "image":Lcom/motorola/messaging/model/ImageModel;
    .end local v1    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    iget v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMediaType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1150
    iget-object v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v3, v5}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v1

    .line 1151
    .restart local v1    # "slide":Lcom/motorola/messaging/model/SlideModel;
    if-eqz v1, :cond_0

    .line 1152
    invoke-virtual {v1}, Lcom/motorola/messaging/model/SlideModel;->getVideo()Lcom/motorola/messaging/model/VideoModel;

    move-result-object v2

    .line 1153
    .local v2, "video":Lcom/motorola/messaging/model/VideoModel;
    invoke-virtual {v2}, Lcom/motorola/messaging/model/VideoModel;->preFetchThumbnail()V

    goto :goto_0
.end method

.method private loadMMSCommon(Lcom/motorola/messaging/pdu/PduPersister;)J
    .locals 12
    .param p1, "persister"    # Lcom/motorola/messaging/pdu/PduPersister;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 1010
    sget-boolean v8, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->LOCAL_LOG:Z

    if-eqz v8, :cond_0

    .line 1011
    const-string v8, "MMSMessageItem"

    const-string v9, "loadMMSCommon"

    invoke-static {v8, v9}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    :cond_0
    const-wide/16 v6, 0x0

    .line 1015
    .local v6, "timestamp":J
    invoke-direct {p0, p1}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->loadMmsData(Lcom/motorola/messaging/pdu/PduPersister;)Lcom/motorola/messaging/pdu/MultimediaMessagePdu;

    move-result-object v2

    .line 1017
    .local v2, "msg":Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
    iget-object v8, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-static {v8}, Lcom/motorola/messaging/util/MessageUtils;->getMMSMediaType(Lcom/motorola/messaging/model/SmilModel;)I

    move-result v8

    iput v8, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMediaType:I

    .line 1019
    if-eqz v2, :cond_3

    .line 1020
    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v8

    iput v8, p0, Lcom/motorola/messaging/composer/MessageItem;->mPriority:I

    .line 1022
    iget v8, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMMSType:I

    const/16 v9, 0x84

    if-ne v8, v9, :cond_4

    move-object v4, v2

    .line 1023
    check-cast v4, Lcom/motorola/messaging/pdu/RetrieveConf;

    .line 1024
    .local v4, "retrieveConf":Lcom/motorola/messaging/pdu/RetrieveConf;
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Lcom/motorola/messaging/conversation/ConversationManager;->getRecipients(Lcom/motorola/messaging/pdu/RetrieveConf;ZZ)Ljava/util/Set;

    move-result-object v3

    .line 1025
    .local v3, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    .line 1026
    const/4 v8, 0x2

    iput v8, p0, Lcom/motorola/messaging/composer/MessageItem;->mMessageGroupType:I

    .line 1029
    :cond_1
    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/RetrieveConf;->getFrom()Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v1

    .line 1030
    .local v1, "from":Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-eqz v1, :cond_2

    .line 1031
    invoke-virtual {v1}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/messaging/composer/MessageItem;->mAddress:Ljava/lang/String;

    .line 1032
    invoke-virtual {v1}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/messaging/composer/MessageItem;->mContactName:Ljava/lang/String;

    .line 1033
    invoke-virtual {v1}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/motorola/messaging/contact/Contact;->get(Ljava/lang/String;ZZ)Lcom/motorola/messaging/contact/Contact;

    move-result-object v0

    .line 1034
    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    if-eqz v0, :cond_2

    .line 1035
    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/messaging/composer/MessageItem;->mContactName:Ljava/lang/String;

    .line 1039
    .end local v0    # "contact":Lcom/motorola/messaging/contact/Contact;
    :cond_2
    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v6, v8, v10

    .line 1061
    .end local v1    # "from":Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v3    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "retrieveConf":Lcom/motorola/messaging/pdu/RetrieveConf;
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->initDeliveryReport()V

    .line 1062
    invoke-direct {p0}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->initThumbnail()V

    .line 1064
    return-wide v6

    .line 1040
    :cond_4
    iget v8, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMMSType:I

    const/16 v9, 0x80

    if-ne v8, v9, :cond_7

    .line 1042
    # getter for: Lcom/motorola/messaging/composer/MessageItem;->mSenderSelfString:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/composer/MessageItem;->access$300()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/messaging/composer/MessageItem;->mAddress:Ljava/lang/String;

    .line 1043
    # getter for: Lcom/motorola/messaging/composer/MessageItem;->mSenderSelfString:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/composer/MessageItem;->access$300()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/messaging/composer/MessageItem;->mContactName:Ljava/lang/String;

    move-object v5, v2

    .line 1044
    check-cast v5, Lcom/motorola/messaging/pdu/SendReq;

    .line 1046
    .local v5, "sendReq":Lcom/motorola/messaging/pdu/SendReq;
    invoke-static {v5}, Lcom/motorola/messaging/conversation/ConversationManager;->getAllRecipients(Lcom/motorola/messaging/pdu/SendReq;)Ljava/util/Set;

    move-result-object v3

    .line 1047
    .restart local v3    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_5

    .line 1048
    invoke-static {v5}, Lcom/motorola/messaging/conversation/ConversationManager;->getBccRecipients(Lcom/motorola/messaging/pdu/SendReq;)Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1049
    const/4 v8, 0x1

    iput v8, p0, Lcom/motorola/messaging/composer/MessageItem;->mMessageGroupType:I

    .line 1055
    :cond_5
    :goto_1
    invoke-virtual {v5}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v6, v8, v10

    .line 1056
    goto :goto_0

    .line 1051
    :cond_6
    const/4 v8, 0x2

    iput v8, p0, Lcom/motorola/messaging/composer/MessageItem;->mMessageGroupType:I

    goto :goto_1

    .line 1057
    .end local v3    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "sendReq":Lcom/motorola/messaging/pdu/SendReq;
    :cond_7
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Invalid MMS PDU"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private loadMMSNotif(Lcom/motorola/messaging/pdu/PduPersister;)J
    .locals 9
    .param p1, "persister"    # Lcom/motorola/messaging/pdu/PduPersister;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 1068
    const-wide/16 v2, 0x0

    .line 1071
    .local v2, "notifExpiry":J
    :try_start_0
    iget-object v5, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v5}, Lcom/motorola/messaging/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v4

    check-cast v4, Lcom/motorola/messaging/pdu/NotificationInd;

    .line 1072
    .local v4, "notifInd":Lcom/motorola/messaging/pdu/NotificationInd;
    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/NotificationInd;->getFrom()Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v1

    .line 1073
    .local v1, "from":Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-eqz v1, :cond_0

    .line 1074
    invoke-virtual {v1}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/messaging/composer/MessageItem;->mAddress:Ljava/lang/String;

    .line 1077
    :cond_0
    sget-object v5, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->NONE:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    iput-object v5, p0, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    .line 1078
    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMessageSize:I

    .line 1079
    iget-object v5, p0, Lcom/motorola/messaging/composer/MessageItem;->mDownloadManager:Lcom/motorola/messaging/transaction/DownloadManager;

    iget-object v6, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/motorola/messaging/transaction/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->setDownloadState(I)V

    .line 1080
    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/NotificationInd;->getExpiry()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v2, v5, v7

    .line 1085
    return-wide v2

    .line 1081
    .end local v1    # "from":Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v4    # "notifInd":Lcom/motorola/messaging/pdu/NotificationInd;
    :catch_0
    move-exception v0

    .line 1082
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v5, Lcom/motorola/messaging/util/MmsException;

    invoke-direct {v5, v0}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private loadMmsData(Lcom/motorola/messaging/pdu/PduPersister;)Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
    .locals 7
    .param p1, "p"    # Lcom/motorola/messaging/pdu/PduPersister;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 1159
    const/4 v2, 0x0

    .line 1161
    .local v2, "msg":Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
    sget-boolean v3, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 1162
    const-string v3, "MMSMessageItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading Mms, uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    .line 1167
    :try_start_0
    iget-object v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Lcom/motorola/messaging/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;

    move-object v2, v0

    .line 1168
    iget-object v3, p0, Lcom/motorola/messaging/composer/MessageItem;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/motorola/messaging/model/Model$CreationMode;->RETRIEVE:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getBody()Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/motorola/messaging/model/SmilModel;->createNew(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Lcom/motorola/messaging/pdu/PduBody;Z)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    :goto_0
    iget-object v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-nez v3, :cond_1

    .line 1174
    const-string v3, "MMSMessageItem"

    const-string v4, "Unable to create slideshow model."

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    :cond_1
    sget-boolean v3, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->LOCAL_LOG:Z

    if-eqz v3, :cond_2

    .line 1178
    const-string v3, "MMSMessageItem"

    const-string v4, "Loading Mms - Finished"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :cond_2
    return-object v2

    .line 1169
    :catch_0
    move-exception v1

    .line 1170
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "MMSMessageItem"

    const-string v4, "Can not retrieve smil model"

    invoke-static {v3, v4, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected blockUI()Z
    .locals 1

    .prologue
    .line 1379
    const/4 v0, 0x0

    return v0
.end method

.method protected buildBody(Ljava/util/regex/Pattern;)V
    .locals 8
    .param p1, "highlight"    # Ljava/util/regex/Pattern;

    .prologue
    const/4 v7, 0x0

    .line 1384
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/composer/MessageItem;->cleanBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    .line 1385
    const/16 v2, 0x82

    iget v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMMSType:I

    if-ne v2, v3, :cond_0

    .line 1386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/motorola/messaging/composer/MessageItem;->mSizeString:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/composer/MessageItem;->access$900()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/composer/MessageItem;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0014

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMessageSize:I

    add-int/lit16 v6, v6, 0x3ff

    div-int/lit16 v6, v6, 0x400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    .line 1412
    :goto_0
    return-void

    .line 1388
    :cond_0
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-eqz v2, :cond_4

    .line 1389
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v2}, Lcom/motorola/messaging/model/SmilModel;->hasSimpleSlideshow()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1390
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v2, v7}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v0

    .line 1392
    .local v0, "slide":Lcom/motorola/messaging/model/SlideModel;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1393
    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->getText()Lcom/motorola/messaging/model/TextModel;

    move-result-object v1

    .line 1394
    .local v1, "tm":Lcom/motorola/messaging/model/TextModel;
    invoke-virtual {v1}, Lcom/motorola/messaging/model/MediaModel;->isDrmProtected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1395
    # getter for: Lcom/motorola/messaging/composer/MessageItem;->mDrmProtectedString:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/composer/MessageItem;->access$1000()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    .line 1402
    .end local v1    # "tm":Lcom/motorola/messaging/model/TextModel;
    :goto_1
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mSubject:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->buildBodyAndSubject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    .line 1403
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2, p1}, Lcom/motorola/messaging/composer/MessageItem;->formatBody(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1397
    .restart local v1    # "tm":Lcom/motorola/messaging/model/TextModel;
    :cond_1
    invoke-virtual {v1}, Lcom/motorola/messaging/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1400
    .end local v1    # "tm":Lcom/motorola/messaging/model/TextModel;
    :cond_2
    const-string v2, ""

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1405
    .end local v0    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_3
    const-string v2, ""

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    .line 1406
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mSubject:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->buildBodyAndSubject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1409
    :cond_4
    # getter for: Lcom/motorola/messaging/composer/MessageItem;->mUnsupportedMmsString:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/composer/MessageItem;->access$1100()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected doFinishLoading()V
    .locals 5

    .prologue
    .line 991
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v1

    .line 993
    .local v1, "persister":Lcom/motorola/messaging/pdu/PduPersister;
    const/16 v2, 0x82

    :try_start_0
    iget v3, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMMSType:I

    if-ne v2, v3, :cond_0

    .line 994
    invoke-direct {p0, v1}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->loadMMSNotif(Lcom/motorola/messaging/pdu/PduPersister;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mRawTimeStamp:J

    .line 998
    :goto_0
    iget-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->buildBody(Ljava/util/regex/Pattern;)V

    .line 1007
    :goto_1
    return-void

    .line 996
    :cond_0
    invoke-direct {p0, v1}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->loadMMSCommon(Lcom/motorola/messaging/pdu/PduPersister;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mRawTimeStamp:J
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v2, "MMSMessageItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFinishLoading - Could not load MMS, type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMMSType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v2, ""

    iput-object v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    .line 1003
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mRawTimeStamp:J

    .line 1005
    # getter for: Lcom/motorola/messaging/composer/MessageItem;->mCache:Lcom/motorola/messaging/composer/MessageItem$Cache;
    invoke-static {}, Lcom/motorola/messaging/composer/MessageItem;->access$200()Lcom/motorola/messaging/composer/MessageItem$Cache;

    move-result-object v2

    iget-wide v3, p0, Lcom/motorola/messaging/composer/MessageItem;->mMsgId:J

    neg-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/motorola/messaging/composer/MessageItem$Cache;->removeItem(J)Lcom/motorola/messaging/composer/MessageItem;

    goto :goto_1
.end method

.method public getMmsMediaType()I
    .locals 1

    .prologue
    .line 1269
    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMediaType:I

    return v0
.end method

.method public getMmsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRawTimeStamp()J
    .locals 2

    .prologue
    .line 973
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 1250
    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMessageSize:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v0}, Lcom/motorola/messaging/model/SmilModel;->getSize()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMessageSize:I

    .line 1254
    :cond_0
    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMessageSize:I

    return v0
.end method

.method public getSmilModel()Lcom/motorola/messaging/model/SmilModel;
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method protected getTimestampStrId()I
    .locals 2

    .prologue
    .line 1187
    const/16 v0, 0x82

    iget v1, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMMSType:I

    if-ne v0, v1, :cond_0

    .line 1188
    const v0, 0x7f0b0013

    .line 1190
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/motorola/messaging/composer/MessageItem;->getTimestampStrId()I

    move-result v0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1279
    const/4 v0, 0x1

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1284
    const-string v0, "mms"

    return-object v0
.end method

.method public hasMultipleRecipients()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1230
    iget v1, p0, Lcom/motorola/messaging/composer/MessageItem;->mMessageGroupType:I

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloaded()Z
    .locals 2

    .prologue
    .line 1210
    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mMMSType:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloading()Z
    .locals 2

    .prologue
    .line 1259
    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mDownloadState:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 1240
    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mErrorType:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncoming()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1215
    iget v1, p0, Lcom/motorola/messaging/composer/MessageItem;->mBoxId:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndividualGroupMessage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1235
    iget v1, p0, Lcom/motorola/messaging/composer/MessageItem;->mMessageGroupType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutgoingNotSent()Z
    .locals 2

    .prologue
    .line 1225
    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mBoxId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSent()Z
    .locals 2

    .prologue
    .line 1220
    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mBoxId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUrgent()Z
    .locals 2

    .prologue
    .line 1245
    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mPriority:I

    const/16 v1, 0x82

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDownloadState(I)V
    .locals 3
    .param p1, "downloadState"    # I

    .prologue
    .line 1089
    iput p1, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mDownloadState:I

    .line 1090
    sget-boolean v0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1091
    const-string v0, "MMSMessageItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDownloadState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;->mDownloadState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    :cond_0
    return-void
.end method

.method protected update(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1290
    const/16 v4, 0x11

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1291
    .local v0, "boxId":I
    const/16 v4, 0x14

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1292
    .local v1, "errorType":I
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 1294
    .local v2, "isProtected":Z
    :goto_0
    new-instance v3, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem$1;-><init>(Lcom/motorola/messaging/composer/MessageItem$MMSMessageItem;ZII)V

    .line 1345
    .local v3, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v4

    const-string v5, "update_mms_message"

    invoke-virtual {v4, v3, v5}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 1346
    return-void

    .line 1292
    .end local v2    # "isProtected":Z
    .end local v3    # "runnable":Ljava/lang/Runnable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
