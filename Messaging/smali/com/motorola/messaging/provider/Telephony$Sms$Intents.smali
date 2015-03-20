.class public final Lcom/motorola/messaging/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1017
    const-string v7, "pdus"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v2, v7

    check-cast v2, [Ljava/lang/Object;

    .line 1018
    .local v2, "messages":[Ljava/lang/Object;
    const-string v7, "format"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1019
    .local v0, "format":Ljava/lang/String;
    array-length v7, v2

    new-array v5, v7, [[B

    .line 1021
    .local v5, "pduObjs":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v2

    if-ge v1, v7, :cond_0

    .line 1022
    aget-object v7, v2, v1

    check-cast v7, [B

    check-cast v7, [B

    aput-object v7, v5, v1

    .line 1021
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1024
    :cond_0
    array-length v7, v5

    new-array v6, v7, [[B

    .line 1025
    .local v6, "pdus":[[B
    array-length v4, v6

    .line 1026
    .local v4, "pduCount":I
    new-array v3, v4, [Landroid/telephony/SmsMessage;

    .line 1027
    .local v3, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    .line 1028
    aget-object v7, v5, v1

    aput-object v7, v6, v1

    .line 1029
    aget-object v7, v6, v1

    invoke-static {v7, v0}, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v3, v1

    .line 1027
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1031
    :cond_1
    return-object v3
.end method
