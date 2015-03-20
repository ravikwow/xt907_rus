.class Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;
.super Lcom/motorola/messaging/composer/MessageItem;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/composer/MessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SMSMessageItem"
.end annotation


# instance fields
.field private mCallbackNumber:Ljava/lang/String;

.field private mCursorStatus:I

.field private mStackType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/regex/Pattern;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "highlight"    # Ljava/util/regex/Pattern;

    .prologue
    .line 757
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/motorola/messaging/composer/MessageItem;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/regex/Pattern;Lcom/motorola/messaging/composer/MessageItem$1;)V

    .line 759
    sget-boolean v0, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 760
    const-string v0, "SMSMessageItem"

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

    .line 763
    :cond_0
    const/16 v0, 0x8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mBoxId:I

    .line 765
    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->mCursorStatus:I

    .line 767
    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->mStackType:I

    .line 769
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mIsProtected:Z

    .line 771
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mAddress:Ljava/lang/String;

    .line 773
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsCallbackNumEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 774
    const/16 v0, 0xd

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->mCallbackNumber:Ljava/lang/String;

    .line 779
    :goto_1
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    .line 780
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 781
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    .line 784
    :cond_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsPriorityEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 785
    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mPriority:I

    .line 788
    :cond_2
    invoke-direct {p0, p2}, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->initSmsTimestamp(Landroid/database/Cursor;)V

    .line 789
    return-void

    .line 769
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 776
    :cond_4
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->mCallbackNumber:Ljava/lang/String;

    goto :goto_1
.end method

.method private initSmsTimestamp(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x2

    .line 804
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 805
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mRawDateSent:J

    .line 806
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsNetworkTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mRawDateSent:J

    :goto_0
    iput-wide v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mRawTimeStamp:J

    .line 813
    :goto_1
    iget-wide v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mRawTimeStamp:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 814
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mRawTimeStamp:J

    .line 816
    :cond_0
    return-void

    .line 806
    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    .line 808
    :cond_2
    iput-wide v3, p0, Lcom/motorola/messaging/composer/MessageItem;->mRawDateSent:J

    goto :goto_1
.end method

.method private updateDeliveryStatus(II)V
    .locals 4
    .param p1, "cursorStatus"    # I
    .param p2, "stackType"    # I

    .prologue
    .line 819
    invoke-static {p1, p2}, Lcom/motorola/messaging/composer/StatusReportUtils;->convertSmsStatus(II)I

    move-result v0

    .line 821
    .local v0, "status":I
    if-nez v0, :cond_1

    .line 823
    sget-object v1, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->NONE:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    iput-object v1, p0, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    .line 835
    :goto_0
    sget-boolean v1, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 836
    const-string v1, "SMSMessageItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS deliveryStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :cond_0
    return-void

    .line 824
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 826
    sget-object v1, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->FAILED:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    iput-object v1, p0, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    goto :goto_0

    .line 827
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 829
    sget-object v1, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->PENDING:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    iput-object v1, p0, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    goto :goto_0

    .line 832
    :cond_3
    sget-object v1, Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;->RECEIVED:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    iput-object v1, p0, Lcom/motorola/messaging/composer/MessageItem;->mDeliveryStatus:Lcom/motorola/messaging/composer/MessageItem$DELIVERY_STATUS;

    goto :goto_0
.end method


# virtual methods
.method protected blockUI()Z
    .locals 1

    .prologue
    .line 926
    const/4 v0, 0x1

    return v0
.end method

.method protected buildBody(Ljava/util/regex/Pattern;)V
    .locals 2
    .param p1, "highlight"    # Ljava/util/regex/Pattern;

    .prologue
    .line 931
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 932
    .local v0, "buf":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0, v0}, Lcom/motorola/messaging/composer/MessageItem;->addUrgentMark(Landroid/text/SpannableStringBuilder;)V

    .line 933
    invoke-virtual {p0, v0, p1}, Lcom/motorola/messaging/composer/MessageItem;->formatBody(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    .line 934
    return-void
.end method

.method protected doFinishLoading()V
    .locals 2

    .prologue
    .line 798
    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->mCursorStatus:I

    iget v1, p0, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->mStackType:I

    invoke-direct {p0, v0, v1}, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->updateDeliveryStatus(II)V

    .line 800
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->buildBody(Ljava/util/regex/Pattern;)V

    .line 801
    return-void
.end method

.method public getCallbackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->mCallbackNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRawTimeStamp()J
    .locals 2

    .prologue
    .line 753
    iget-wide v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mRawTimeStamp:J

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mBody:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x0

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 879
    const-string v0, "sms"

    return-object v0
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 859
    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mBoxId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

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

    .line 842
    iget v1, p0, Lcom/motorola/messaging/composer/MessageItem;->mBoxId:I

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
    .line 852
    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mBoxId:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mBoxId:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mBoxId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSent()Z
    .locals 2

    .prologue
    .line 847
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
    .line 864
    iget v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mPriority:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected update(Landroid/database/Cursor;)V
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 889
    sget-boolean v5, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 890
    const-string v5, "SMSMessageItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updating, id ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/motorola/messaging/composer/MessageItem;->mMsgId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :cond_0
    const/4 v3, 0x0

    .line 893
    .local v3, "needsUpdate":Z
    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 894
    .local v0, "boxId":I
    iget v5, p0, Lcom/motorola/messaging/composer/MessageItem;->mBoxId:I

    if-eq v0, v5, :cond_1

    .line 895
    const/4 v3, 0x1

    .line 896
    iput v0, p0, Lcom/motorola/messaging/composer/MessageItem;->mBoxId:I

    .line 897
    invoke-direct {p0, p1}, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->initSmsTimestamp(Landroid/database/Cursor;)V

    .line 899
    :cond_1
    const/16 v5, 0xa

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 900
    .local v4, "stackType":I
    const/16 v5, 0x9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 901
    .local v1, "cursorStatus":I
    iget v5, p0, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->mCursorStatus:I

    if-eq v1, v5, :cond_2

    .line 902
    const/4 v3, 0x1

    .line 903
    iput v1, p0, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->mCursorStatus:I

    .line 904
    iput v4, p0, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->mStackType:I

    .line 905
    iget v5, p0, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->mCursorStatus:I

    iget v6, p0, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->mStackType:I

    invoke-direct {p0, v5, v6}, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->updateDeliveryStatus(II)V

    .line 907
    :cond_2
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v2, 0x1

    .line 908
    .local v2, "isProtected":Z
    :goto_0
    iget-boolean v5, p0, Lcom/motorola/messaging/composer/MessageItem;->mIsProtected:Z

    if-eq v2, v5, :cond_3

    .line 909
    const/4 v3, 0x1

    .line 910
    iput-boolean v2, p0, Lcom/motorola/messaging/composer/MessageItem;->mIsProtected:Z

    .line 912
    :cond_3
    if-eqz v3, :cond_5

    .line 913
    sget-boolean v5, Lcom/motorola/messaging/composer/MessageItem$SMSMessageItem;->LOCAL_LOG:Z

    if-eqz v5, :cond_4

    .line 914
    const-string v5, "SMSMessageItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updated, id ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/motorola/messaging/composer/MessageItem;->mMsgId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/messaging/composer/MessageItem;->updateListener()V

    .line 918
    :cond_5
    return-void

    .line 907
    .end local v2    # "isProtected":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method
