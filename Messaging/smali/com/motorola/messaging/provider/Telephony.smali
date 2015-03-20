.class public final Lcom/motorola/messaging/provider/Telephony;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/provider/Telephony$Carriers;,
        Lcom/motorola/messaging/provider/Telephony$MmsSms;,
        Lcom/motorola/messaging/provider/Telephony$Mms;,
        Lcom/motorola/messaging/provider/Telephony$Threads;,
        Lcom/motorola/messaging/provider/Telephony$ThreadsColumns;,
        Lcom/motorola/messaging/provider/Telephony$BaseMmsColumns;,
        Lcom/motorola/messaging/provider/Telephony$Sms;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 42
    sput-boolean v0, Lcom/motorola/messaging/provider/Telephony;->DEBUG:Z

    .line 43
    sget-boolean v1, Lcom/motorola/messaging/provider/Telephony;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/provider/Telephony;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/motorola/messaging/provider/Telephony;->LOCAL_LOG:Z

    return v0
.end method
