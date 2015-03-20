.class public Lcom/motorola/messaging/util/MessagingNotification;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/util/MessagingNotification$NotificationInfoComparator;,
        Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;,
        Lcom/motorola/messaging/util/MessagingNotification$MmsSmsDeliveryInfo;,
        Lcom/motorola/messaging/util/MessagingNotification$OnDeletedReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final INFO_COMPARATOR:Lcom/motorola/messaging/util/MessagingNotification$NotificationInfoComparator;

.field private static final LOCAL_LOG:Z

.field private static final MMS_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

.field private static final SMS_URI:Landroid/net/Uri;

.field public static final TIMESTAMP_MMS:Ljava/lang/String;

.field public static final TIMESTAMP_SMS:Ljava/lang/String;

.field private static final UNDELIVERED_URI:Landroid/net/Uri;

.field private static sNotificationDeletedReceiver:Lcom/motorola/messaging/util/MessagingNotification$OnDeletedReceiver;

.field private static sNotificationSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sPduPersister:Lcom/motorola/messaging/pdu/PduPersister;

.field private static sScreenDensity:F

.field private static sToastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 99
    sput-boolean v1, Lcom/motorola/messaging/util/MessagingNotification;->DEBUG:Z

    .line 100
    sget-boolean v0, Lcom/motorola/messaging/util/MessagingNotification;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/util/MessagingNotification;->LOCAL_LOG:Z

    .line 102
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsNetworkTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "date_sent"

    :goto_1
    sput-object v0, Lcom/motorola/messaging/util/MessagingNotification;->TIMESTAMP_SMS:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsNetworkTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "date_sent"

    :goto_2
    sput-object v0, Lcom/motorola/messaging/util/MessagingNotification;->TIMESTAMP_MMS:Ljava/lang/String;

    .line 106
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "thread_id"

    aput-object v3, v0, v2

    sget-object v3, Lcom/motorola/messaging/util/MessagingNotification;->TIMESTAMP_MMS:Ljava/lang/String;

    aput-object v3, v0, v1

    const-string v3, "_id"

    aput-object v3, v0, v5

    const-string v3, "sub"

    aput-object v3, v0, v6

    const-string v3, "sub_cs"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "sub_id"

    aput-object v4, v0, v3

    sput-object v0, Lcom/motorola/messaging/util/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 110
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "thread_id"

    aput-object v3, v0, v2

    sget-object v3, Lcom/motorola/messaging/util/MessagingNotification;->TIMESTAMP_SMS:Ljava/lang/String;

    aput-object v3, v0, v1

    const-string v3, "address"

    aput-object v3, v0, v5

    const-string v3, "subject"

    aput-object v3, v0, v6

    const-string v3, "body"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "sub_id"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "priority"

    aput-object v4, v0, v3

    sput-object v0, Lcom/motorola/messaging/util/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 127
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "thread_id"

    aput-object v3, v0, v2

    sput-object v0, Lcom/motorola/messaging/util/MessagingNotification;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    .line 128
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/messaging/util/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    .line 149
    new-instance v0, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfoComparator;-><init>(Lcom/motorola/messaging/util/MessagingNotification$1;)V

    sput-object v0, Lcom/motorola/messaging/util/MessagingNotification;->INFO_COMPARATOR:Lcom/motorola/messaging/util/MessagingNotification$NotificationInfoComparator;

    .line 152
    const-string v0, "content://mms-sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/util/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    .line 153
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/util/MessagingNotification;->SMS_URI:Landroid/net/Uri;

    .line 169
    new-instance v0, Lcom/motorola/messaging/util/MessagingNotification$OnDeletedReceiver;

    invoke-direct {v0}, Lcom/motorola/messaging/util/MessagingNotification$OnDeletedReceiver;-><init>()V

    sput-object v0, Lcom/motorola/messaging/util/MessagingNotification;->sNotificationDeletedReceiver:Lcom/motorola/messaging/util/MessagingNotification$OnDeletedReceiver;

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/motorola/messaging/util/MessagingNotification;->sToastHandler:Landroid/os/Handler;

    .line 179
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/motorola/messaging/util/MessagingNotification;->INFO_COMPARATOR:Lcom/motorola/messaging/util/MessagingNotification$NotificationInfoComparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/motorola/messaging/util/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    return-void

    :cond_0
    move v0, v2

    .line 100
    goto/16 :goto_0

    .line 102
    :cond_1
    const-string v0, "date"

    goto/16 :goto_1

    .line 103
    :cond_2
    const-string v0, "date"

    goto/16 :goto_2
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/motorola/messaging/util/MessagingNotification;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/CharSequence;
    .param p3, "x3"    # J

    .prologue
    .line 95
    invoke-static {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/util/MessagingNotification;->updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 95
    invoke-static {p0, p1}, Lcom/motorola/messaging/util/MessagingNotification;->getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;[J)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # [J

    .prologue
    .line 95
    invoke-static {p0, p1}, Lcom/motorola/messaging/util/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v0

    return v0
.end method

.method private static final addMmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;)V
    .locals 32
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 696
    .local p1, "threads":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 703
    .local v3, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/motorola/messaging/util/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v6, "(msg_box=1 AND seen=0 AND (m_type=130 OR m_type=132))"

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 707
    .local v18, "cursor":Landroid/database/Cursor;
    if-nez v18, :cond_0

    .line 798
    :goto_0
    return-void

    .line 712
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 714
    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 715
    .local v23, "msgId":J
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v25

    .line 717
    .local v25, "msgUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 719
    .local v6, "address":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v6, v2}, Lcom/motorola/messaging/contact/Contact;->get(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v15

    .line 725
    .local v15, "contact":Lcom/motorola/messaging/contact/Contact;
    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/motorola/messaging/util/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 727
    .local v8, "subject":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 728
    .local v9, "threadId":J
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v30, 0x3e8

    mul-long v12, v4, v30

    .line 729
    .local v12, "timeMillis":J
    const/4 v2, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 731
    .local v11, "subId":I
    sget-boolean v2, Lcom/motorola/messaging/util/MessagingNotification;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 732
    const-string v2, "MsgngNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addMmsNotificationInfos: count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    :cond_1
    const/4 v14, 0x0

    .line 738
    .local v14, "attachedPicture":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 739
    .local v7, "messageBody":Ljava/lang/String;
    const/16 v16, 0x0

    .line 740
    .local v16, "attachmentType":I
    const/16 v28, -0x1

    .line 742
    .local v28, "priority":I
    :try_start_1
    sget-object v2, Lcom/motorola/messaging/util/MessagingNotification;->sPduPersister:Lcom/motorola/messaging/pdu/PduPersister;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/motorola/messaging/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v26

    .line 743
    .local v26, "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    if-eqz v26, :cond_4

    move-object/from16 v0, v26

    instance-of v2, v0, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;

    if-eqz v2, :cond_4

    .line 744
    sget-object v4, Lcom/motorola/messaging/model/Model$CreationMode;->RETRIEVE:Lcom/motorola/messaging/model/Model$CreationMode;

    move-object/from16 v0, v26

    check-cast v0, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getBody()Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v2, v5}, Lcom/motorola/messaging/model/SmilModel;->createNew(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Lcom/motorola/messaging/pdu/PduBody;Z)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v29

    .line 746
    .local v29, "smilModel":Lcom/motorola/messaging/model/SmilModel;
    invoke-static/range {v29 .. v29}, Lcom/motorola/messaging/util/MessagingNotification;->getAttachmentType(Lcom/motorola/messaging/model/SmilModel;)I

    move-result v16

    .line 747
    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v20

    .line 748
    .local v20, "firstSlide":Lcom/motorola/messaging/model/SlideModel;
    if-eqz v20, :cond_4

    .line 749
    invoke-virtual/range {v20 .. v20}, Lcom/motorola/messaging/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 750
    const/16 v2, 0x168

    invoke-static {v2}, Lcom/motorola/messaging/util/MessagingNotification;->dp2Pixels(I)I
    :try_end_1
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v22

    .line 752
    .local v22, "maxDim":I
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Lcom/motorola/messaging/model/SlideModel;->getImage()Lcom/motorola/messaging/model/ImageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/messaging/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/motorola/messaging/util/MessagingNotification;->createBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Lcom/motorola/messaging/drm/DrmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    .line 759
    .end local v22    # "maxDim":I
    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Lcom/motorola/messaging/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 760
    invoke-virtual/range {v20 .. v20}, Lcom/motorola/messaging/model/SlideModel;->getText()Lcom/motorola/messaging/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/messaging/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v7

    .line 762
    :cond_3
    check-cast v26, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;

    .end local v26    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    invoke-virtual/range {v26 .. v26}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v28

    .line 763
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsPriorityEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x82

    move/from16 v0, v28

    if-ne v0, v2, :cond_4

    .line 765
    invoke-static/range {p0 .. p0}, Lcom/motorola/messaging/util/MessagingNotification;->getPrioNotificationPrefix(Landroid/content/Context;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v27

    .line 766
    .local v27, "prefix":Ljava/lang/String;
    if-nez v7, :cond_5

    move-object/from16 v7, v27

    .line 775
    .end local v20    # "firstSlide":Lcom/motorola/messaging/model/SlideModel;
    .end local v27    # "prefix":Ljava/lang/String;
    .end local v29    # "smilModel":Lcom/motorola/messaging/model/SmilModel;
    :cond_4
    :goto_3
    :try_start_4
    const-string v2, "MsgngNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachmentType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "attachedPicture = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subject = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", messageBody = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const/4 v5, 0x0

    const/16 v2, 0x82

    move/from16 v0, v28

    if-ne v0, v2, :cond_6

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v4, p0

    invoke-static/range {v4 .. v17}, Lcom/motorola/messaging/util/MessagingNotification;->getNewMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLandroid/graphics/Bitmap;Lcom/motorola/messaging/contact/Contact;IZ)Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;

    move-result-object v21

    .line 791
    .local v21, "info":Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;
    sget-object v2, Lcom/motorola/messaging/util/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 793
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 796
    .end local v6    # "address":Ljava/lang/String;
    .end local v7    # "messageBody":Ljava/lang/String;
    .end local v8    # "subject":Ljava/lang/String;
    .end local v9    # "threadId":J
    .end local v11    # "subId":I
    .end local v12    # "timeMillis":J
    .end local v14    # "attachedPicture":Landroid/graphics/Bitmap;
    .end local v15    # "contact":Lcom/motorola/messaging/contact/Contact;
    .end local v16    # "attachmentType":I
    .end local v21    # "info":Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;
    .end local v23    # "msgId":J
    .end local v25    # "msgUri":Landroid/net/Uri;
    .end local v28    # "priority":I
    :catchall_0
    move-exception v2

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v2

    .line 753
    .restart local v6    # "address":Ljava/lang/String;
    .restart local v7    # "messageBody":Ljava/lang/String;
    .restart local v8    # "subject":Ljava/lang/String;
    .restart local v9    # "threadId":J
    .restart local v11    # "subId":I
    .restart local v12    # "timeMillis":J
    .restart local v14    # "attachedPicture":Landroid/graphics/Bitmap;
    .restart local v15    # "contact":Lcom/motorola/messaging/contact/Contact;
    .restart local v16    # "attachmentType":I
    .restart local v20    # "firstSlide":Lcom/motorola/messaging/model/SlideModel;
    .restart local v22    # "maxDim":I
    .restart local v23    # "msgId":J
    .restart local v25    # "msgUri":Landroid/net/Uri;
    .restart local v26    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .restart local v28    # "priority":I
    .restart local v29    # "smilModel":Lcom/motorola/messaging/model/SmilModel;
    :catch_0
    move-exception v19

    .line 754
    .local v19, "e":Lcom/motorola/messaging/drm/DrmException;
    :try_start_5
    const-string v2, "MsgngNotification"

    const-string v4, "DrmException getBitmap"

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 771
    .end local v19    # "e":Lcom/motorola/messaging/drm/DrmException;
    .end local v20    # "firstSlide":Lcom/motorola/messaging/model/SlideModel;
    .end local v22    # "maxDim":I
    .end local v26    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .end local v29    # "smilModel":Lcom/motorola/messaging/model/SmilModel;
    :catch_1
    move-exception v19

    .line 772
    .local v19, "e":Lcom/motorola/messaging/util/MmsException;
    :try_start_6
    const-string v2, "MsgngNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MmsException loading uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 755
    .end local v19    # "e":Lcom/motorola/messaging/util/MmsException;
    .restart local v20    # "firstSlide":Lcom/motorola/messaging/model/SlideModel;
    .restart local v22    # "maxDim":I
    .restart local v26    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .restart local v29    # "smilModel":Lcom/motorola/messaging/model/SmilModel;
    :catch_2
    move-exception v19

    .line 756
    .local v19, "e":Ljava/lang/OutOfMemoryError;
    :try_start_7
    const-string v2, "MsgngNotification"

    const-string v4, "OutOfMemoryError createBitmap"

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 766
    .end local v19    # "e":Ljava/lang/OutOfMemoryError;
    .end local v22    # "maxDim":I
    .end local v26    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .restart local v27    # "prefix":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v7

    goto/16 :goto_3

    .line 780
    .end local v20    # "firstSlide":Lcom/motorola/messaging/model/SlideModel;
    .end local v27    # "prefix":Ljava/lang/String;
    .end local v29    # "smilModel":Lcom/motorola/messaging/model/SmilModel;
    :cond_6
    const/16 v17, 0x0

    goto :goto_4

    .line 796
    .end local v6    # "address":Ljava/lang/String;
    .end local v7    # "messageBody":Ljava/lang/String;
    .end local v8    # "subject":Ljava/lang/String;
    .end local v9    # "threadId":J
    .end local v11    # "subId":I
    .end local v12    # "timeMillis":J
    .end local v14    # "attachedPicture":Landroid/graphics/Bitmap;
    .end local v15    # "contact":Lcom/motorola/messaging/contact/Contact;
    .end local v16    # "attachmentType":I
    .end local v23    # "msgId":J
    .end local v25    # "msgUri":Landroid/net/Uri;
    .end local v28    # "priority":I
    :cond_7
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private static final addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 929
    .local p1, "threads":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 930
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/motorola/messaging/util/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v5, "(type = 1 AND seen = 0)"

    const/4 v6, 0x0

    const-string v7, "date desc"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 934
    .local v17, "cursor":Landroid/database/Cursor;
    if-nez v17, :cond_0

    .line 977
    :goto_0
    return-void

    .line 939
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 940
    const/4 v1, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 942
    .local v5, "address":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v5, v1}, Lcom/motorola/messaging/contact/Contact;->get(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v14

    .line 948
    .local v14, "contact":Lcom/motorola/messaging/contact/Contact;
    const/4 v1, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 949
    .local v6, "message":Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 950
    .local v8, "threadId":J
    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 951
    .local v11, "timeMillis":J
    const/4 v1, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 952
    .local v10, "subId":I
    const/4 v1, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 953
    .local v19, "priority":I
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsPriorityEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez v19, :cond_1

    .line 954
    if-nez v6, :cond_3

    .line 957
    :cond_1
    :goto_2
    sget-boolean v1, Lcom/motorola/messaging/util/MessagingNotification;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 959
    const-string v1, "MsgngNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSmsNotificationInfos: count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", thread_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    :cond_2
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    if-lez v19, :cond_4

    const/16 v16, 0x1

    :goto_3
    move-object/from16 v3, p0

    invoke-static/range {v3 .. v16}, Lcom/motorola/messaging/util/MessagingNotification;->getNewMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLandroid/graphics/Bitmap;Lcom/motorola/messaging/contact/Contact;IZ)Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;

    move-result-object v18

    .line 969
    .local v18, "info":Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;
    sget-object v1, Lcom/motorola/messaging/util/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    move-object/from16 v0, v18

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 971
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 972
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 975
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "message":Ljava/lang/String;
    .end local v8    # "threadId":J
    .end local v10    # "subId":I
    .end local v11    # "timeMillis":J
    .end local v14    # "contact":Lcom/motorola/messaging/contact/Contact;
    .end local v18    # "info":Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;
    .end local v19    # "priority":I
    :catchall_0
    move-exception v1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v1

    .line 954
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v6    # "message":Ljava/lang/String;
    .restart local v8    # "threadId":J
    .restart local v10    # "subId":I
    .restart local v11    # "timeMillis":J
    .restart local v14    # "contact":Lcom/motorola/messaging/contact/Contact;
    .restart local v19    # "priority":I
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/motorola/messaging/util/MessagingNotification;->getPrioNotificationPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_2

    .line 964
    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    .line 975
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "message":Ljava/lang/String;
    .end local v8    # "threadId":J
    .end local v10    # "subId":I
    .end local v11    # "timeMillis":J
    .end local v14    # "contact":Lcom/motorola/messaging/contact/Contact;
    .end local v19    # "priority":I
    :cond_5
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private static final addWapNotificationInfos(Landroid/content/Context;Ljava/util/Set;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 802
    .local p1, "threads":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 809
    .local v3, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/motorola/messaging/util/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v6, "(msg_box=1 AND seen=0 AND (m_type=130))"

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 813
    .local v18, "cursor":Landroid/database/Cursor;
    if-nez v18, :cond_0

    .line 861
    :goto_0
    return-void

    .line 818
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 820
    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 821
    .local v20, "msgId":J
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v22

    .line 823
    .local v22, "msgUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 825
    .local v6, "address":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v6, v2}, Lcom/motorola/messaging/contact/Contact;->get(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v15

    .line 827
    .local v15, "contact":Lcom/motorola/messaging/contact/Contact;
    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/motorola/messaging/util/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 829
    .local v8, "subject":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 830
    .local v9, "threadId":J
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v24, 0x3e8

    mul-long v12, v4, v24

    .line 831
    .local v12, "timeMillis":J
    const/4 v2, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 833
    .local v11, "subId":I
    sget-boolean v2, Lcom/motorola/messaging/util/MessagingNotification;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 834
    const-string v2, "MsgngNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addWapNotificationInfos: count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :cond_1
    const/4 v14, 0x0

    .line 839
    .local v14, "attachedPicture":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 840
    .local v7, "messageBody":Ljava/lang/String;
    const/16 v16, 0x0

    .line 841
    .local v16, "attachmentType":I
    const/16 v23, -0x1

    .line 843
    .local v23, "priority":I
    const/4 v5, 0x0

    const/16 v2, 0x82

    move/from16 v0, v23

    if-ne v0, v2, :cond_2

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v4, p0

    invoke-static/range {v4 .. v17}, Lcom/motorola/messaging/util/MessagingNotification;->getNewMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLandroid/graphics/Bitmap;Lcom/motorola/messaging/contact/Contact;IZ)Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;

    move-result-object v19

    .line 854
    .local v19, "info":Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;
    sget-object v2, Lcom/motorola/messaging/util/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 856
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 859
    .end local v6    # "address":Ljava/lang/String;
    .end local v7    # "messageBody":Ljava/lang/String;
    .end local v8    # "subject":Ljava/lang/String;
    .end local v9    # "threadId":J
    .end local v11    # "subId":I
    .end local v12    # "timeMillis":J
    .end local v14    # "attachedPicture":Landroid/graphics/Bitmap;
    .end local v15    # "contact":Lcom/motorola/messaging/contact/Contact;
    .end local v16    # "attachmentType":I
    .end local v19    # "info":Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;
    .end local v20    # "msgId":J
    .end local v22    # "msgUri":Landroid/net/Uri;
    .end local v23    # "priority":I
    :catchall_0
    move-exception v2

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v2

    .line 843
    .restart local v6    # "address":Ljava/lang/String;
    .restart local v7    # "messageBody":Ljava/lang/String;
    .restart local v8    # "subject":Ljava/lang/String;
    .restart local v9    # "threadId":J
    .restart local v11    # "subId":I
    .restart local v12    # "timeMillis":J
    .restart local v14    # "attachedPicture":Landroid/graphics/Bitmap;
    .restart local v15    # "contact":Lcom/motorola/messaging/contact/Contact;
    .restart local v16    # "attachmentType":I
    .restart local v20    # "msgId":J
    .restart local v22    # "msgUri":Landroid/net/Uri;
    .restart local v23    # "priority":I
    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    .line 859
    .end local v6    # "address":Ljava/lang/String;
    .end local v7    # "messageBody":Ljava/lang/String;
    .end local v8    # "subject":Ljava/lang/String;
    .end local v9    # "threadId":J
    .end local v11    # "subId":I
    .end local v12    # "timeMillis":J
    .end local v14    # "attachedPicture":Landroid/graphics/Bitmap;
    .end local v15    # "contact":Lcom/motorola/messaging/contact/Contact;
    .end local v16    # "attachmentType":I
    .end local v20    # "msgId":J
    .end local v22    # "msgUri":Landroid/net/Uri;
    .end local v23    # "priority":I
    :cond_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static blockingUpdateAllNotifications(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 435
    invoke-static {p0, v0, v0}, Lcom/motorola/messaging/util/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 436
    invoke-static {p0}, Lcom/motorola/messaging/util/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 437
    invoke-static {p0}, Lcom/motorola/messaging/util/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 438
    return-void
.end method

.method public static blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isNew"    # Z
    .param p2, "isStatusMessage"    # Z

    .prologue
    .line 394
    sget-object v5, Lcom/motorola/messaging/util/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->clear()V

    .line 396
    const/4 v2, 0x0

    .line 397
    .local v2, "delivery":Lcom/motorola/messaging/util/MessagingNotification$MmsSmsDeliveryInfo;
    new-instance v4, Ljava/util/HashSet;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 399
    .local v4, "threads":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionManager;->getInstance()Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/messaging/transaction/TransactionManager;->getDownloadManager()Lcom/motorola/messaging/transaction/DownloadManager;

    move-result-object v3

    .line 400
    .local v3, "downloadManager":Lcom/motorola/messaging/transaction/DownloadManager;
    invoke-virtual {v3}, Lcom/motorola/messaging/transaction/DownloadManager;->isAuto()Z

    move-result v0

    .line 402
    .local v0, "autoDownload":Z
    const/4 v1, 0x0

    .line 403
    .local v1, "count":I
    invoke-static {p0, v4}, Lcom/motorola/messaging/util/MessagingNotification;->addMmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;)V

    .line 404
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isOnCall()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isConcurrentVoiceAndData()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->getNetworkRestriction()Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    move-result-object v5

    sget-object v6, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;->NONE:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    if-eq v5, v6, :cond_2

    .line 407
    :cond_1
    invoke-static {p0, v4}, Lcom/motorola/messaging/util/MessagingNotification;->addWapNotificationInfos(Landroid/content/Context;Ljava/util/Set;)V

    .line 409
    :cond_2
    invoke-static {p0, v4}, Lcom/motorola/messaging/util/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;)V

    .line 411
    const v5, 0x379ab

    invoke-static {p0, v5}, Lcom/motorola/messaging/util/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 412
    sget-object v5, Lcom/motorola/messaging/util/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 413
    sget-boolean v5, Lcom/motorola/messaging/util/MessagingNotification;->LOCAL_LOG:Z

    if-eqz v5, :cond_3

    .line 414
    const-string v5, "MsgngNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "blockingUpdateNewMessageIndicator: count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isNew="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_3
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {p0, p1, v5}, Lcom/motorola/messaging/util/MessagingNotification;->updateNotification(Landroid/content/Context;ZI)V

    .line 424
    :goto_0
    invoke-static {p0}, Lcom/motorola/messaging/util/MessagingNotification;->getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/motorola/messaging/util/MessagingNotification$MmsSmsDeliveryInfo;

    move-result-object v2

    .line 425
    if-eqz v2, :cond_4

    .line 426
    invoke-virtual {v2, p0, p2}, Lcom/motorola/messaging/util/MessagingNotification$MmsSmsDeliveryInfo;->deliver(Landroid/content/Context;Z)V

    .line 428
    :cond_4
    return-void

    .line 419
    :cond_5
    invoke-static {p0}, Lcom/motorola/messaging/util/MessagingNotification;->sendClearNotificationBroadcast(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0xd

    const/16 v4, 0xa

    const/16 v3, 0x20

    .line 1316
    invoke-static {p1, v6}, Lcom/motorola/messaging/contact/Contact;->get(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1318
    new-instance v1, Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1322
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1324
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    if-nez p4, :cond_4

    const-string v0, "Sub1"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1330
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1331
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1332
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1336
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1337
    invoke-virtual {p3, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    :cond_2
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1342
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1345
    return-object v2

    .line 1318
    :cond_3
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1325
    :cond_4
    const-string v0, "Sub2"

    goto :goto_1
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationId"    # I

    .prologue
    .line 1034
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1036
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1037
    return-void
.end method

.method public static final clearNotification(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationId"    # I

    .prologue
    .line 234
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/motorola/messaging/util/MessagingNotification;->clearNotification(Landroid/content/Context;IZ)V

    .line 235
    return-void
.end method

.method public static final clearNotification(Landroid/content/Context;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationId"    # I
    .param p2, "cancel"    # Z

    .prologue
    .line 247
    sget-boolean v0, Lcom/motorola/messaging/util/MessagingNotification;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "MsgngNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel notification for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    const v0, 0x379ab

    if-ne p1, v0, :cond_1

    .line 252
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/messaging/util/MessagingNotification;->updateNotification(Landroid/content/Context;I)V

    .line 255
    :cond_1
    if-eqz p2, :cond_2

    .line 256
    invoke-static {p0, p1}, Lcom/motorola/messaging/util/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 257
    invoke-static {p0}, Lcom/motorola/messaging/util/MessagingNotification;->sendClearNotificationBroadcast(Landroid/content/Context;)V

    .line 259
    :cond_2
    return-void
.end method

.method private static createBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "picture"    # Landroid/graphics/Bitmap;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 872
    sget-boolean v8, Lcom/motorola/messaging/util/MessagingNotification;->LOCAL_LOG:Z

    if-eqz v8, :cond_0

    .line 873
    const-string v8, "MsgngNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "trying to resize the picture to size of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 876
    .local v7, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 877
    .local v1, "height":I
    int-to-float v8, p1

    int-to-float v9, v7

    div-float v4, v8, v9

    .line 878
    .local v4, "scaleFactorW":F
    int-to-float v8, p1

    int-to-float v9, v1

    div-float v3, v8, v9

    .line 879
    .local v3, "scaleFactorH":F
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 880
    .local v2, "scaleFactor":F
    const/high16 v8, 0x3f800000

    cmpl-float v8, v2, v8

    if-lez v8, :cond_1

    .line 895
    .end local p0    # "picture":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 883
    .restart local p0    # "picture":Landroid/graphics/Bitmap;
    :cond_1
    sget-boolean v8, Lcom/motorola/messaging/util/MessagingNotification;->LOCAL_LOG:Z

    if-eqz v8, :cond_2

    .line 884
    const-string v8, "MsgngNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bitmap scale factor is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :cond_2
    int-to-float v8, v7

    mul-float/2addr v8, v2

    float-to-int v6, v8

    .line 887
    .local v6, "scaledWidth":I
    int-to-float v8, v7

    mul-float/2addr v8, v2

    float-to-int v5, v8

    .line 888
    .local v5, "scaledHeight":I
    const/4 v8, 0x0

    invoke-static {p0, v6, v5, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 889
    .local v0, "b":Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    .line 890
    sget-boolean v8, Lcom/motorola/messaging/util/MessagingNotification;->LOCAL_LOG:Z

    if-eqz v8, :cond_3

    .line 891
    const-string v8, "MsgngNotification"

    const-string v9, "Bitmap.createScaledBitmap returned NULL!"

    invoke-static {v8, v9}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object p0, v0

    .line 895
    goto :goto_0
.end method

.method private static final dp2Pixels(I)I
    .locals 2
    .param p0, "dip"    # I

    .prologue
    .line 868
    int-to-float v0, p0

    sget v1, Lcom/motorola/messaging/util/MessagingNotification;->sScreenDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static formatSenders(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p1, "senders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;>;"
    const/4 v6, 0x0

    .line 621
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v5, 0x7f0d0034

    invoke-direct {v2, p0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 624
    .local v2, "notificationSenderSpan":Landroid/text/style/TextAppearanceSpan;
    const v5, 0x7f0b0296

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 625
    .local v3, "separator":Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 626
    .local v4, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 627
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 628
    if-lez v0, :cond_0

    .line 629
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 631
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;

    iget-object v5, v5, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->mSender:Lcom/motorola/messaging/contact/Contact;

    invoke-virtual {v5}, Lcom/motorola/messaging/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    :cond_1
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v2, v6, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 635
    return-object v4
.end method

.method private static getAttachmentType(Lcom/motorola/messaging/model/SmilModel;)I
    .locals 5
    .param p0, "slideshow"    # Lcom/motorola/messaging/model/SmilModel;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 640
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SmilModel;->size()I

    move-result v1

    .line 642
    .local v1, "slideCount":I
    if-nez v1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return v2

    .line 644
    :cond_1
    if-le v1, v3, :cond_2

    .line 645
    const/4 v2, 0x4

    goto :goto_0

    .line 647
    :cond_2
    invoke-virtual {p0, v2}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v0

    .line 648
    .local v0, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 649
    goto :goto_0

    .line 650
    :cond_3
    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->hasVideo()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 651
    const/4 v2, 0x2

    goto :goto_0

    .line 652
    :cond_4
    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 653
    const/4 v2, 0x3

    goto :goto_0
.end method

.method private static getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachmentType"    # I

    .prologue
    const/4 v4, 0x0

    .line 662
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0d0035

    invoke-direct {v1, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 664
    .local v1, "notificationAttachmentSpan":Landroid/text/style/TextAppearanceSpan;
    const/4 v0, 0x0

    .line 665
    .local v0, "id":I
    packed-switch p1, :pswitch_data_0

    .line 671
    :goto_0
    if-lez v0, :cond_0

    .line 672
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 673
    .local v2, "spannableString":Landroid/text/SpannableString;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v2, v1, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 677
    .end local v2    # "spannableString":Landroid/text/SpannableString;
    :goto_1
    return-object v2

    .line 666
    :pswitch_0
    const v0, 0x7f0b0292

    goto :goto_0

    .line 667
    :pswitch_1
    const v0, 0x7f0b0294

    goto :goto_0

    .line 668
    :pswitch_2
    const v0, 0x7f0b0293

    goto :goto_0

    .line 669
    :pswitch_3
    const v0, 0x7f0b0295

    goto :goto_0

    .line 677
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 665
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static final getClearNotificationIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationId"    # I

    .prologue
    const/4 v3, 0x0

    .line 356
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.blur.conversations.notification.ACTION_CLEAR_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.motorola.blur.conversations.notification.EXTRA_NOTIFICATION_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 360
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.motorola.blur.conversations.notification.EXTRA_CANCEL_NOTIFICATION"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    const/high16 v1, 0x40000000

    invoke-static {p0, v3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private static getDownloadFailedMessageCount(Landroid/content/Context;)I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1581
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "st"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x87

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1588
    if-nez v1, :cond_0

    .line 1589
    const/4 v0, 0x0

    .line 1593
    :goto_0
    return v0

    .line 1591
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1592
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static getFdnCheckFailureMsgCount(Landroid/content/Context;)I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1514
    const-string v1, "failure_cause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    sget v1, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_FDN_CHECK_FAILURE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1517
    const-string v1, " AND read=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    const/4 v7, 0x0

    .line 1520
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/util/MessagingNotification;->SMS_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1526
    if-eqz v1, :cond_2

    .line 1528
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1529
    sget-boolean v2, Lcom/motorola/messaging/util/MessagingNotification;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 1530
    const-string v2, "MsgngNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFdnCheckFailureMsgCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1534
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1538
    :goto_0
    sget-boolean v1, Lcom/motorola/messaging/util/MessagingNotification;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 1539
    const-string v1, "MsgngNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFdnCheckFailureMsgCount, count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    :cond_1
    return v0

    .line 1534
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v7

    goto :goto_0
.end method

.method private static getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "sub"    # Ljava/lang/String;
    .param p1, "charset"    # I

    .prologue
    .line 1349
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/motorola/messaging/pdu/EncodedStringValue;

    invoke-static {p0}, Lcom/motorola/messaging/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v0}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getNewMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLandroid/graphics/Bitmap;Lcom/motorola/messaging/contact/Contact;IZ)Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;
    .locals 20

    .prologue
    .line 1007
    new-instance v7, Landroid/content/Intent;

    const-class v5, Lcom/motorola/messaging/activity/ComposeMessageActivity;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1009
    const-wide/16 v5, 0x0

    cmp-long v5, p5, v5

    if-lez v5, :cond_0

    .line 1010
    invoke-static/range {p5 .. p6}, Lcom/motorola/messaging/conversation/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1012
    :cond_0
    const/high16 v5, 0x34000000

    invoke-virtual {v7, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1015
    const-string v5, "clear_cache"

    const/4 v6, 0x1

    invoke-virtual {v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1017
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1018
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getAnonymousRecipientPrompt()Ljava/lang/String;

    move-result-object p2

    .line 1021
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p7

    invoke-static {v0, v1, v5, v6, v2}, Lcom/motorola/messaging/util/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1023
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1025
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move/from16 v4, p7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/messaging/util/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1028
    new-instance v5, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-wide/from16 v11, p8

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move/from16 v16, p12

    move-wide/from16 v17, p5

    move/from16 v19, p13

    invoke-direct/range {v5 .. v19}, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;-><init>(ZLandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;JLjava/lang/String;Landroid/graphics/Bitmap;Lcom/motorola/messaging/contact/Contact;IJZ)V

    return-object v5
.end method

.method private static getPrioNotificationPrefix(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 864
    const v0, 0x7f0b00b9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/motorola/messaging/util/MessagingNotification$MmsSmsDeliveryInfo;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 899
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 900
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/motorola/messaging/util/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(type = 2 AND status = 0)"

    const-string v6, "date"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 904
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 919
    :goto_0
    return-object v5

    .line 909
    :cond_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 923
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 913
    :cond_1
    const/4 v0, 0x2

    :try_start_1
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 914
    .local v7, "address":Ljava/lang/String;
    const-wide/16 v11, 0xbb8

    .line 916
    .local v11, "timeMillis":J
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/motorola/messaging/contact/Contact;->get(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v8

    .line 917
    .local v8, "contact":Lcom/motorola/messaging/contact/Contact;
    invoke-virtual {v8}, Lcom/motorola/messaging/contact/Contact;->getNameAndAddress()Ljava/lang/String;

    move-result-object v10

    .line 919
    .local v10, "name":Ljava/lang/String;
    new-instance v5, Lcom/motorola/messaging/util/MessagingNotification$MmsSmsDeliveryInfo;

    const v0, 0x7f0b029b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v11, v12}, Lcom/motorola/messaging/util/MessagingNotification$MmsSmsDeliveryInfo;-><init>(Ljava/lang/CharSequence;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 923
    .end local v7    # "address":Ljava/lang/String;
    .end local v8    # "contact":Lcom/motorola/messaging/contact/Contact;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "timeMillis":J
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getUndeliveredMessageCount(Landroid/content/Context;[J)I
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1484
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/util/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    sget-object v3, Lcom/motorola/messaging/util/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "read=0"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1486
    if-nez v3, :cond_0

    move v0, v7

    .line 1509
    :goto_0
    return v0

    .line 1489
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1491
    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1492
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, p1, v1

    .line 1494
    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 1496
    const/4 v1, 0x0

    aget-wide v1, p1, v1

    .line 1497
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1498
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-eqz v4, :cond_1

    .line 1499
    const-wide/16 v1, 0x0

    .line 1503
    :cond_2
    const/4 v4, 0x1

    aput-wide v1, p1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1507
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static hasHighPriorityMessage()Z
    .locals 4

    .prologue
    .line 1079
    const/4 v2, 0x0

    .line 1080
    .local v2, "result":Z
    sget-object v3, Lcom/motorola/messaging/util/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1081
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1082
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;

    .line 1083
    .local v1, "nInfo":Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;
    invoke-virtual {v1}, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->isHighPrio()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1084
    const/4 v2, 0x1

    .line 1088
    .end local v1    # "nInfo":Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;
    :cond_1
    return v2
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.motorola.blur.conversations.notification.ACTION_CLEAR_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    sget-object v1, Lcom/motorola/messaging/util/MessagingNotification;->sNotificationDeletedReceiver:Lcom/motorola/messaging/util/MessagingNotification$OnDeletedReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    invoke-static {p0}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v1

    sput-object v1, Lcom/motorola/messaging/util/MessagingNotification;->sPduPersister:Lcom/motorola/messaging/pdu/PduPersister;

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/motorola/messaging/util/MessagingNotification;->sScreenDensity:F

    .line 198
    return-void
.end method

.method public static nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isNew"    # Z
    .param p2, "isStatusMessage"    # Z

    .prologue
    .line 374
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/motorola/messaging/util/MessagingNotification$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/motorola/messaging/util/MessagingNotification$2;-><init>(Landroid/content/Context;ZZ)V

    const-string v2, "MessagingNotification.nonBlockingUpdateNewMessageIndicator"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 380
    return-void
.end method

.method public static nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1546
    new-instance v0, Lcom/motorola/messaging/util/MessagingNotification$4;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/util/MessagingNotification$4;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1561
    return-void
.end method

.method public static notifyDownloadFailed(Landroid/content/Context;JZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J
    .param p3, "noisy"    # Z

    .prologue
    .line 291
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2, p3}, Lcom/motorola/messaging/util/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 292
    return-void
.end method

.method private static notifyFailed(Landroid/content/Context;ZJZ)V
    .locals 9

    .prologue
    .line 1368
    invoke-static {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->isMessageNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1369
    if-nez v0, :cond_1

    .line 1472
    :cond_0
    :goto_0
    return-void

    .line 1380
    :cond_1
    const/4 v0, 0x2

    new-array v3, v0, [J

    fill-array-data v3, :array_0

    .line 1381
    invoke-static {p0, v3}, Lcom/motorola/messaging/util/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v1

    .line 1382
    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    .line 1386
    :cond_2
    invoke-static {p0}, Lcom/motorola/messaging/util/MessagingNotification;->getFdnCheckFailureMsgCount(Landroid/content/Context;)I

    move-result v2

    .line 1387
    sget-boolean v0, Lcom/motorola/messaging/util/MessagingNotification;->LOCAL_LOG:Z

    if-eqz v0, :cond_3

    .line 1388
    const-string v0, "MsgngNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total FDN Check Failure Msg Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    :cond_3
    const/4 v0, 0x1

    aget-wide v4, v3, v0

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    if-eqz p1, :cond_7

    :cond_4
    const/4 v0, 0x1

    .line 1398
    :goto_1
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 1401
    const/4 v5, 0x1

    if-le v1, v5, :cond_8

    if-lez v2, :cond_8

    .line 1403
    const v2, 0x7f0b00fe

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1405
    const v1, 0x7f0b00fc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1423
    :goto_2
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v5

    .line 1424
    if-eqz v0, :cond_d

    .line 1425
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1426
    if-eqz p1, :cond_c

    .line 1428
    const-string v3, "failed_download_flag"

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1433
    :goto_3
    const-string v3, "thread_id"

    invoke-virtual {v0, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1434
    const-class v3, Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v5, v3}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    .line 1439
    :goto_4
    const/high16 v3, 0x14000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1440
    invoke-virtual {v5, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 1442
    const v0, 0x1080078

    iput v0, v4, Landroid/app/Notification;->icon:I

    .line 1444
    iput-object v2, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1446
    const/4 v0, 0x0

    const/high16 v3, 0x8000000

    invoke-virtual {v5, v0, v3}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v4, p0, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1449
    if-eqz p4, :cond_6

    .line 1450
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1451
    const-string v1, "pref_key_vibrate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1453
    if-eqz v1, :cond_5

    .line 1454
    iget v1, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v4, Landroid/app/Notification;->defaults:I

    .line 1457
    :cond_5
    const-string v1, "pref_key_ringtone"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1459
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    :goto_5
    iput-object v0, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1462
    :cond_6
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1465
    if-eqz p1, :cond_f

    .line 1466
    const/16 v1, 0x68

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1395
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1406
    :cond_8
    const/4 v5, 0x1

    if-ne v1, v5, :cond_9

    const/4 v5, 0x1

    if-ne v2, v5, :cond_9

    .line 1408
    const v1, 0x7f0b00fb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1409
    const v1, 0x7f0b00fc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 1410
    :cond_9
    const/4 v5, 0x1

    if-le v1, v5, :cond_a

    if-nez v2, :cond_a

    .line 1412
    const v2, 0x7f0b0298

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1414
    const v2, 0x7f0b0299

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 1416
    :cond_a
    if-eqz p1, :cond_b

    const v1, 0x7f0b00f6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1420
    :goto_6
    const v2, 0x7f0b029a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_2

    .line 1416
    :cond_b
    const v1, 0x7f0b00f8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 1430
    :cond_c
    const/4 v6, 0x0

    aget-wide p2, v3, v6

    .line 1431
    const-string v3, "undelivered_flag"

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1436
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/motorola/messaging/activity/ConversationListActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_4

    .line 1459
    :cond_e
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_5

    .line 1469
    :cond_f
    const/16 v1, 0x67

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1380
    :array_0
    .array-data 8
        0x0
        0x1
    .end array-data
.end method

.method public static final notifyNewSimMessage(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/16 v5, 0x66

    .line 313
    invoke-static {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->isMessageNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 318
    :cond_0
    const v0, 0x7f0b00e5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020095

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 321
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/motorola/messaging/activity/ManageSimMessagesActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 328
    const-string v3, ""

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 330
    invoke-static {p0, v1}, Lcom/motorola/messaging/util/MessagingNotification;->setVibrateAndRingtone(Landroid/content/Context;Landroid/app/Notification;)V

    .line 332
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 333
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 334
    const v0, -0xff0100

    iput v0, v1, Landroid/app/Notification;->ledARGB:I

    .line 335
    const/16 v0, 0x1f4

    iput v0, v1, Landroid/app/Notification;->ledOnMS:I

    .line 336
    const/16 v0, 0x7d0

    iput v0, v1, Landroid/app/Notification;->ledOffMS:I

    .line 339
    invoke-static {p0, v5}, Lcom/motorola/messaging/util/MessagingNotification;->getClearNotificationIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 342
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 345
    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public static notifySendFailed(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1358
    const-wide/16 v0, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lcom/motorola/messaging/util/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 1359
    return-void
.end method

.method public static notifySendFailed(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noisy"    # Z

    .prologue
    .line 1362
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lcom/motorola/messaging/util/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 1363
    return-void
.end method

.method private static sendClearNotificationBroadcast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 271
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.motorola.contracts.messaging.intent.action.NO_MORE_UNSEEN_MESSAGES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 273
    return-void
.end method

.method private static final setVibrateAndRingtone(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 1068
    invoke-static {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->isNotificationVibrate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 1071
    :cond_0
    invoke-static {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->getNotificationRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1072
    return-void
.end method

.method public static updateAllNotifications(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 281
    new-instance v0, Lcom/motorola/messaging/util/MessagingNotification$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/util/MessagingNotification$1;-><init>(Landroid/content/Context;)V

    .line 287
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "update_all_notifications"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method private static updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isStatusMessage"    # Z
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "timeMillis"    # J

    .prologue
    .line 1043
    if-nez p1, :cond_1

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    invoke-static {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->isMessageNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    sget-object v0, Lcom/motorola/messaging/util/MessagingNotification;->sToastHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/messaging/util/MessagingNotification$3;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/motorola/messaging/util/MessagingNotification$3;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static updateDownloadFailedNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1597
    invoke-static {p0}, Lcom/motorola/messaging/util/MessagingNotification;->getDownloadFailedMessageCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1598
    const/16 v0, 0x68

    invoke-static {p0, v0}, Lcom/motorola/messaging/util/MessagingNotification;->clearNotification(Landroid/content/Context;I)V

    .line 1601
    :cond_0
    return-void
.end method

.method public static updateNewMessageIndicator(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-static {p0, v0, v0}, Lcom/motorola/messaging/util/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 208
    return-void
.end method

.method public static updateNewMessageIndicator(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isNew"    # Z

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/motorola/messaging/util/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 219
    return-void
.end method

.method public static updateNewMessageIndicator(Landroid/content/Context;ZZ)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isNew"    # Z
    .param p2, "isVisualAlertOnly"    # Z

    .prologue
    .line 230
    invoke-static {p0, p1, p2}, Lcom/motorola/messaging/util/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 231
    return-void
.end method

.method private static updateNotification(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # I

    .prologue
    .line 262
    if-gtz p1, :cond_0

    .line 263
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/messaging/settings/MessageSettings;->setNotificationCount(I)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-static {p1}, Lcom/motorola/messaging/settings/MessageSettings;->setNotificationCount(I)V

    goto :goto_0
.end method

.method private static updateNotification(Landroid/content/Context;ZI)V
    .locals 10

    .prologue
    .line 1103
    invoke-static {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->isMessageNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1104
    sget-boolean v0, Lcom/motorola/messaging/util/MessagingNotification;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1105
    const-string v0, "MsgngNotification"

    const-string v1, "updateNotification: notifications turned off in prefs, bailing"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    :cond_0
    :goto_0
    return-void

    .line 1111
    :cond_1
    sget-object v0, Lcom/motorola/messaging/util/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v4

    .line 1112
    sget-object v0, Lcom/motorola/messaging/util/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;

    .line 1114
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v2, v0, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->mTimeMillis:J

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1117
    const v1, -0xff0100

    const/16 v2, 0x1f4

    const/16 v3, 0x7d0

    invoke-virtual {v5, v1, v2, v3}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 1119
    if-eqz p1, :cond_2

    .line 1120
    iget-object v1, v0, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1122
    :cond_2
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v6

    .line 1134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1136
    const/4 v2, 0x0

    .line 1137
    const/4 v1, 0x1

    if-le p2, v1, :cond_7

    .line 1138
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1140
    const/high16 v3, 0x34000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1144
    const-string v3, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1145
    invoke-virtual {v6, v1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 1146
    const v1, 0x7f0b0297

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1147
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsPriorityEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/motorola/messaging/util/MessagingNotification;->hasHighPriorityMessage()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/motorola/messaging/util/MessagingNotification;->getPrioNotificationPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v3, v1

    .line 1178
    :goto_1
    invoke-static {}, Lcom/motorola/messaging/util/MessagingNotification;->hasHighPriorityMessage()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1179
    const v1, 0x7f020096

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1185
    :goto_2
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1189
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-virtual {v6, v7, v8}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v6, "android.message"

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->addKind(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1196
    const/4 v3, 0x0

    .line 1198
    if-eqz p1, :cond_5

    .line 1199
    invoke-static {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->isNotificationVibrate(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1200
    const/4 v3, 0x2

    .line 1202
    :cond_4
    invoke-static {p0}, Lcom/motorola/messaging/activity/MessagingPreferenceActivity;->getNotificationRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 1203
    sget-boolean v6, Lcom/motorola/messaging/util/MessagingNotification;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 1204
    const-string v6, "MsgngNotification"

    const-string v7, "updateNotification: new message, adding sound to the notification"

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    :cond_5
    or-int/lit8 v3, v3, 0x4

    .line 1210
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1213
    const v3, 0x379ab

    invoke-static {p0, v3}, Lcom/motorola/messaging/util/MessagingNotification;->getClearNotificationIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1217
    const/4 v3, 0x1

    if-ne v4, v3, :cond_c

    .line 1221
    invoke-virtual {v0, p0}, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1223
    iget-object v2, v0, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_b

    .line 1225
    const-string v2, "MsgngNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "about to show a notification with bitmap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    new-instance v2, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v2, v5}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v3, v0, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v2

    invoke-virtual {v0, p0}, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->formatPictureMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BigPictureStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1311
    :cond_6
    :goto_3
    const v2, 0x379ab

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1151
    :cond_7
    iget-object v3, v0, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    .line 1152
    iget-object v1, v0, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->mSender:Lcom/motorola/messaging/contact/Contact;

    invoke-virtual {v1}, Lcom/motorola/messaging/contact/Contact;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1153
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1154
    if-eqz v8, :cond_15

    .line 1157
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1158
    if-eqz v1, :cond_9

    .line 1159
    const v2, 0x1050006

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1161
    const v8, 0x1050005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1163
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ge v8, v2, :cond_8

    .line 1165
    const/4 v8, 0x1

    invoke-static {v1, v7, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1168
    :cond_8
    if-eqz v1, :cond_9

    .line 1169
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1174
    :cond_9
    :goto_4
    const-class v2, Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-virtual {v6, v2}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    .line 1175
    iget-object v2, v0, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->mClickIntent:Landroid/content/Intent;

    invoke-virtual {v6, v2}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-object v2, v1

    goto/16 :goto_1

    .line 1183
    :cond_a
    const v1, 0x7f020095

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    .line 1234
    :cond_b
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2, v5}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, p0}, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_3

    .line 1240
    :cond_c
    const/4 v0, 0x1

    if-ne p2, v0, :cond_11

    .line 1244
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1245
    sget-object v0, Lcom/motorola/messaging/util/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    sget-object v3, Lcom/motorola/messaging/util/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->size()I

    move-result v3

    new-array v3, v3, [Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;

    invoke-interface {v0, v3}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;

    .line 1247
    array-length v3, v0

    .line 1248
    add-int/lit8 v3, v3, -0x1

    :goto_5
    if-ltz v3, :cond_e

    .line 1249
    aget-object v7, v0, v3

    .line 1251
    invoke-virtual {v7, p0}, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1253
    if-eqz v3, :cond_d

    .line 1254
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1248
    :cond_d
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 1257
    :cond_e
    const v0, 0x7f0b0297

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1259
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsPriorityEnable()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/motorola/messaging/util/MessagingNotification;->hasHighPriorityMessage()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/motorola/messaging/util/MessagingNotification;->getPrioNotificationPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1262
    :cond_f
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1265
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0, v5}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    if-nez v2, :cond_10

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v3, v0}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    goto/16 :goto_3

    :cond_10
    const-string v0, " "

    goto :goto_6

    .line 1273
    :cond_11
    new-instance v2, Ljava/util/HashSet;

    sget-object v0, Lcom/motorola/messaging/util/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1274
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1276
    sget-object v0, Lcom/motorola/messaging/util/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1277
    :cond_12
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1278
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;

    .line 1279
    iget-wide v6, v0, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 1280
    iget-wide v6, v0, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1281
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1286
    :cond_13
    invoke-static {p0, v3}, Lcom/motorola/messaging/util/MessagingNotification;->formatSenders(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1287
    new-instance v4, Landroid/app/Notification$InboxStyle;

    invoke-direct {v4, v5}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 1291
    const-string v0, " "

    invoke-virtual {v4, v0}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 1296
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1297
    const/16 v2, 0x8

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1299
    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-ge v2, v5, :cond_14

    .line 1300
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;

    .line 1301
    invoke-virtual {v0, p0}, Lcom/motorola/messaging/util/MessagingNotification$NotificationInfo;->formatInboxMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 1299
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 1303
    :cond_14
    invoke-virtual {v4}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1304
    sget-boolean v2, Lcom/motorola/messaging/util/MessagingNotification;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 1305
    const-string v2, "MsgngNotification"

    const-string v3, "updateNotification: multi messages, showing inboxStyle notification"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_15
    move-object v1, v2

    goto/16 :goto_4
.end method

.method public static updateSendFailedNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    sget-boolean v0, Lcom/motorola/messaging/util/MessagingNotification;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 296
    const-string v0, "MsgngNotification"

    const-string v1, "updateSendFailedNotification"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/messaging/util/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 300
    const/16 v0, 0x67

    invoke-static {p0, v0}, Lcom/motorola/messaging/util/MessagingNotification;->clearNotification(Landroid/content/Context;I)V

    .line 305
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-static {p0}, Lcom/motorola/messaging/util/MessagingNotification;->notifySendFailed(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static updateSendFailedNotificationForThread(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J

    .prologue
    .line 1567
    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    .line 1568
    .local v0, "msgThreadId":[J
    invoke-static {p0, v0}, Lcom/motorola/messaging/util/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1571
    const/16 v1, 0x67

    invoke-static {p0, v1}, Lcom/motorola/messaging/util/MessagingNotification;->clearNotification(Landroid/content/Context;I)V

    .line 1574
    :cond_0
    return-void

    .line 1567
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method
