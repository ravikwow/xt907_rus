.class public Lcom/android/mms/transaction/SmsReceiverService$Retry;
.super Ljava/lang/Object;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Retry"
.end annotation


# instance fields
.field private mDestsCommonId:I

.field private mErrorCode:I

.field private mPendingId:I

.field private mRetryCount:I

.field private mRetryType:I

.field private mUri:Landroid/net/Uri;

.field private mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mUriList:Ljava/util/ArrayList;

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mRetryType:I

    .line 113
    const-string v0, "content://sms/sendFirst"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mUri:Landroid/net/Uri;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;II)V
    .locals 1
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "pendingId"    # I
    .param p3, "retryCount"    # I

    .prologue
    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mUriList:Ljava/util/ArrayList;

    .line 118
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mRetryType:I

    .line 119
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mUri:Landroid/net/Uri;

    .line 120
    iput p2, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mPendingId:I

    .line 121
    iput p3, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mRetryCount:I

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x1

    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mUriList:Ljava/util/ArrayList;

    .line 133
    const-string v0, "retry_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mRetryType:I

    .line 134
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mUri:Landroid/net/Uri;

    .line 136
    iget v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mRetryType:I

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 138
    :pswitch_0
    const-string v0, "pending_id"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mPendingId:I

    .line 139
    const-string v0, "retry_count"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mRetryCount:I

    .line 140
    const-string v0, "error_code"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mErrorCode:I

    goto :goto_0

    .line 144
    :pswitch_1
    const-string v0, "dest_common_id"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mDestsCommonId:I

    .line 145
    const-string v0, "uri_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mUriList:Ljava/util/ArrayList;

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 2
    .param p2, "destsCommonId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mUriList:Ljava/util/ArrayList;

    .line 126
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mRetryType:I

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://sms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mUri:Landroid/net/Uri;

    .line 128
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mUriList:Ljava/util/ArrayList;

    .line 129
    iput p2, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mDestsCommonId:I

    .line 130
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 151
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "retry_type"

    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mRetryType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 155
    iget v1, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mRetryType:I

    packed-switch v1, :pswitch_data_0

    .line 167
    :goto_0
    return-object v0

    .line 157
    :pswitch_0
    const-string v1, "pending_id"

    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mPendingId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string v1, "retry_count"

    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mRetryCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 162
    :pswitch_1
    const-string v1, "uri_list"

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 163
    const-string v1, "dest_common_id"

    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mDestsCommonId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDestsCommonId()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mDestsCommonId:I

    return v0
.end method

.method public getPendingId()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mPendingId:I

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mRetryCount:I

    return v0
.end method

.method public getRetryType()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mRetryType:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUriList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$Retry;->mUriList:Ljava/util/ArrayList;

    return-object v0
.end method
