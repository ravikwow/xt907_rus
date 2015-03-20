.class public Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;
.super Ljava/lang/Object;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/SmsReceiverService;
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
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mUriList:Ljava/util/ArrayList;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mRetryType:I

    .line 106
    const-string v0, "content://sms/sendFirst"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mUri:Landroid/net/Uri;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;II)V
    .locals 1
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "pendingId"    # I
    .param p3, "retryCount"    # I

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mUriList:Ljava/util/ArrayList;

    .line 111
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mRetryType:I

    .line 112
    iput-object p1, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mUri:Landroid/net/Uri;

    .line 113
    iput p2, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mPendingId:I

    .line 114
    iput p3, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mRetryCount:I

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mUriList:Ljava/util/ArrayList;

    .line 126
    const-string v0, "retry_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mRetryType:I

    .line 127
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mUri:Landroid/net/Uri;

    .line 129
    iget v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mRetryType:I

    packed-switch v0, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 131
    :pswitch_0
    const-string v0, "pending_id"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mPendingId:I

    .line 132
    const-string v0, "retry_count"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mRetryCount:I

    .line 133
    const-string v0, "error_code"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mErrorCode:I

    goto :goto_0

    .line 137
    :pswitch_1
    const-string v0, "dest_common_id"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mDestsCommonId:I

    .line 138
    const-string v0, "uri_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mUriList:Ljava/util/ArrayList;

    goto :goto_0

    .line 129
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
    .line 118
    .local p1, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mUriList:Ljava/util/ArrayList;

    .line 119
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mRetryType:I

    .line 120
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

    iput-object v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mUri:Landroid/net/Uri;

    .line 121
    iput-object p1, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mUriList:Ljava/util/ArrayList;

    .line 122
    iput p2, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mDestsCommonId:I

    .line 123
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "retry_type"

    iget v2, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mRetryType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    const-string v1, "uri"

    iget-object v2, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 148
    iget v1, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mRetryType:I

    packed-switch v1, :pswitch_data_0

    .line 160
    :goto_0
    return-object v0

    .line 150
    :pswitch_0
    const-string v1, "pending_id"

    iget v2, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mPendingId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    const-string v1, "retry_count"

    iget v2, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mRetryCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 155
    :pswitch_1
    const-string v1, "uri_list"

    iget-object v2, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 156
    const-string v1, "dest_common_id"

    iget v2, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mDestsCommonId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 148
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
    .line 169
    iget v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mDestsCommonId:I

    return v0
.end method

.method public getPendingId()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mPendingId:I

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mRetryCount:I

    return v0
.end method

.method public getRetryType()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mRetryType:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mUri:Landroid/net/Uri;

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
    .line 168
    iget-object v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->mUriList:Ljava/util/ArrayList;

    return-object v0
.end method
