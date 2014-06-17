.class public Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;
.super Ljava/lang/Object;
.source "MessageItem.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PduLoadedMessageItemCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageItem;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 18
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 312
    if-eqz p2, :cond_1

    .line 313
    # getter for: Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/MessageItem;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string v13, "PduLoadedMessageItemCallback PDU couldn\'t be loaded: "

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    # getter for: Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;
    invoke-static {v12}, Lcom/android/mms/ui/MessageItem;->access$100(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 317
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    # getter for: Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;
    invoke-static {v12}, Lcom/android/mms/ui/MessageItem;->access$100(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v13

    monitor-enter v13

    .line 318
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    # getter for: Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;
    invoke-static {v12}, Lcom/android/mms/ui/MessageItem;->access$100(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v12

    const/4 v14, 0x1

    invoke-interface {v12, v14}, Lcom/android/mms/util/ItemLoadedFuture;->setIsDone(Z)V

    .line 319
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move-object/from16 v4, p1

    .line 321
    check-cast v4, Lcom/android/mms/util/PduLoaderManager$PduLoaded;

    .line 322
    .local v4, "pduLoaded":Lcom/android/mms/util/PduLoaderManager$PduLoaded;
    const-wide/16 v9, 0x0

    .line 323
    .local v9, "timestamp":J
    const/16 v12, 0x82

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget v13, v13, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v12, v13, :cond_4

    .line 324
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    sget-object v13, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v13, v12, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 325
    iget-object v3, v4, Lcom/android/mms/util/PduLoaderManager$PduLoaded;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v3, Lcom/google/android/mms/pdu/NotificationInd;

    .line 326
    .local v3, "notifInd":Lcom/google/android/mms/pdu/NotificationInd;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v14, v14, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    # invokes: Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    invoke-static {v12, v13, v14}, Lcom/android/mms/ui/MessageItem;->access$200(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    new-instance v13, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    iput-object v13, v12, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 329
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v13

    long-to-int v13, v13

    iput v13, v12, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 330
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long v9, v12, v14

    .line 401
    .end local v3    # "notifInd":Lcom/google/android/mms/pdu/NotificationInd;
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v12}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v12

    if-nez v12, :cond_3

    .line 402
    const/16 v12, 0x82

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget v13, v13, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v12, v13, :cond_12

    .line 403
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v13, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0017

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v9, v10}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 409
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    # getter for: Lcom/android/mms/ui/MessageItem;->mPduLoadedCallback:Lcom/android/mms/ui/MessageItem$PduLoadedCallback;
    invoke-static {v12}, Lcom/android/mms/ui/MessageItem;->access$300(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem$PduLoadedCallback;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    # getter for: Lcom/android/mms/ui/MessageItem;->mPduLoadedCallback:Lcom/android/mms/ui/MessageItem$PduLoadedCallback;
    invoke-static {v12}, Lcom/android/mms/ui/MessageItem;->access$300(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem$PduLoadedCallback;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-interface {v12, v13}, Lcom/android/mms/ui/MessageItem$PduLoadedCallback;->onPduLoaded(Lcom/android/mms/ui/MessageItem;)V

    goto/16 :goto_0

    .line 319
    .end local v4    # "pduLoaded":Lcom/android/mms/util/PduLoaderManager$PduLoaded;
    .end local v9    # "timestamp":J
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 332
    .restart local v4    # "pduLoaded":Lcom/android/mms/util/PduLoaderManager$PduLoaded;
    .restart local v9    # "timestamp":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v12, v12, Lcom/android/mms/ui/MessageItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v12

    if-nez v12, :cond_0

    .line 335
    iget-object v1, v4, Lcom/android/mms/util/PduLoaderManager$PduLoaded;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 336
    .local v1, "msg":Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v4, Lcom/android/mms/util/PduLoaderManager$PduLoaded;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object v13, v12, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 337
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v13, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v13, v1}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/MultimediaMessagePdu;)I

    move-result v13

    iput v13, v12, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 339
    if-eqz v1, :cond_5

    .line 340
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v13

    iput v13, v12, Lcom/android/mms/ui/MessageItem;->mPriority:I

    .line 343
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget v12, v12, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v13, 0x84

    if-ne v12, v13, :cond_a

    .line 344
    if-nez v1, :cond_9

    .line 345
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v14, v14, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    # invokes: Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    invoke-static {v12, v13, v14}, Lcom/android/mms/ui/MessageItem;->access$200(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 358
    .end local v1    # "msg":Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v12, v12, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v12, :cond_c

    const/4 v8, 0x0

    .line 359
    .local v8, "slide":Lcom/android/mms/model/SlideModel;
    :goto_4
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 360
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v11

    .line 361
    .local v11, "tm":Lcom/android/mms/model/TextModel;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v11}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 362
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v11}, Lcom/android/mms/model/TextModel;->getContentType()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    .line 365
    .end local v11    # "tm":Lcom/android/mms/model/TextModel;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v12, v12, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v12, :cond_d

    const/4 v12, 0x0

    :goto_5
    iput v12, v13, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 367
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v12, v12, Lcom/android/mms/ui/MessageItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v13, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v13, v13, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, "report":Ljava/lang/String;
    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v12, v12, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v13, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0012

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 370
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    sget-object v13, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v13, v12, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 386
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v12, v12, Lcom/android/mms/ui/MessageItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v13, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v13, v13, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 387
    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v12, v12, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v13, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0012

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 389
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    goto/16 :goto_1

    .end local v5    # "report":Ljava/lang/String;
    .end local v8    # "slide":Lcom/android/mms/model/SlideModel;
    .restart local v1    # "msg":Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_9
    move-object v7, v1

    .line 347
    check-cast v7, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 348
    .local v7, "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v14, v14, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    # invokes: Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    invoke-static {v12, v13, v14}, Lcom/android/mms/ui/MessageItem;->access$200(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 349
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/RetrieveConf;->getDate()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long v9, v12, v14

    .line 350
    goto/16 :goto_3

    .line 353
    .end local v7    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v14, v14, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0012

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 355
    if-nez v1, :cond_b

    const-wide/16 v9, 0x0

    .end local v1    # "msg":Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :goto_7
    goto/16 :goto_3

    .restart local v1    # "msg":Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_b
    check-cast v1, Lcom/google/android/mms/pdu/SendReq;

    .end local v1    # "msg":Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long v9, v12, v14

    goto :goto_7

    .line 358
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v12, v12, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    goto/16 :goto_4

    .line 365
    .restart local v8    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v12, v12, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->getTotalMessageSize()I

    move-result v12

    goto/16 :goto_5

    .line 374
    .restart local v5    # "report":Ljava/lang/String;
    :cond_e
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 375
    .local v6, "reportInt":I
    const/16 v12, 0x80

    if-ne v6, v12, :cond_f

    .line 376
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    sget-object v13, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v13, v12, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 380
    .end local v6    # "reportInt":I
    :catch_0
    move-exception v2

    .line 381
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/MessageItem;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Value for delivery report was invalid."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    sget-object v13, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v13, v12, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_6

    .line 378
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v6    # "reportInt":I
    :cond_f
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    sget-object v13, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v13, v12, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .line 393
    .end local v6    # "reportInt":I
    :cond_10
    :try_start_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 394
    .restart local v6    # "reportInt":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    const/16 v12, 0x80

    if-ne v6, v12, :cond_11

    const/4 v12, 0x1

    :goto_8
    iput-boolean v12, v13, Lcom/android/mms/ui/MessageItem;->mReadReport:Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 395
    .end local v6    # "reportInt":I
    :catch_1
    move-exception v2

    .line 396
    .restart local v2    # "nfe":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/MessageItem;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Value for read report was invalid."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    goto/16 :goto_1

    .line 394
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v6    # "reportInt":I
    :cond_11
    const/4 v12, 0x0

    goto :goto_8

    .line 406
    .end local v5    # "report":Ljava/lang/String;
    .end local v6    # "reportInt":I
    .end local v8    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v13, v13, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-static {v13, v9, v10}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_2
.end method
