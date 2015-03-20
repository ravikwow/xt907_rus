.class public Lcom/motorola/messaging/transaction/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;,
        Lcom/motorola/messaging/transaction/NetworkManager$VoiceAndData;,
        Lcom/motorola/messaging/transaction/NetworkManager$CallState;
    }
.end annotation


# static fields
.field private static CDMASMSErrorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field private static MMSErrorDetail:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static MOMMSErrorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static MTMMSErrorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mApnMCC:Ljava/lang/String;

.field private static mApnMNC:Ljava/lang/String;

.field private static mConnMgr:Landroid/net/ConnectivityManager;

.field private static mContext:Landroid/content/Context;

.field protected static mEmulVoiceAndData:Lcom/motorola/messaging/transaction/NetworkManager$VoiceAndData;

.field protected static mEmulateCall:Lcom/motorola/messaging/transaction/NetworkManager$CallState;

.field private static mResolver:Landroid/content/ContentResolver;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static mTelephonyManagerExt:Lcom/motorola/messaging/frameworkadapter/motorola/TelephonyManagerExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 60
    sput-boolean v0, Lcom/motorola/messaging/transaction/NetworkManager;->DEBUG:Z

    .line 61
    sget-boolean v1, Lcom/motorola/messaging/transaction/NetworkManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    .line 76
    sput-object v2, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    .line 77
    sput-object v2, Lcom/motorola/messaging/transaction/NetworkManager;->mResolver:Landroid/content/ContentResolver;

    .line 78
    sput-object v2, Lcom/motorola/messaging/transaction/NetworkManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 79
    sput-object v2, Lcom/motorola/messaging/transaction/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 80
    sput-object v2, Lcom/motorola/messaging/transaction/NetworkManager;->mTelephonyManagerExt:Lcom/motorola/messaging/frameworkadapter/motorola/TelephonyManagerExtension;

    .line 112
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager$CallState;->NONE:Lcom/motorola/messaging/transaction/NetworkManager$CallState;

    sput-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mEmulateCall:Lcom/motorola/messaging/transaction/NetworkManager$CallState;

    .line 113
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager$VoiceAndData;->NONE:Lcom/motorola/messaging/transaction/NetworkManager$VoiceAndData;

    sput-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mEmulVoiceAndData:Lcom/motorola/messaging/transaction/NetworkManager$VoiceAndData;

    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method private static addCDMASMSErrorsToMap()V
    .locals 4

    .prologue
    const v3, 0x7f0b0127

    .line 266
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b011a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b011b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b011c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b011d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b011e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b011f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0120

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0121

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0122

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0123

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0124

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0125

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0126

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0128

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0129

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b012a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b012b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b012c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b012d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b012e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b012f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0130

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0131

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0132

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0133

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0134

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0135

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0136

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0137

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0138

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0139

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b013a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b013b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b013c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b013d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b013e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b013f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0140

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0141

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0142

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0143

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0144

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0145

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8006

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0146

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8007

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0147

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0148

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8009

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0149

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x800a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b014a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x800b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b014b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    return-void
.end method

.method public static addMMSErrorDetail(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "detail"    # Ljava/lang/String;

    .prologue
    .line 180
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MMSErrorDetail:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method private static addMOMMSErrorsToMap()V
    .locals 8

    .prologue
    const v7, 0x7f0b014e

    const v6, 0x7f0b014d

    const/16 v5, 0xe6

    const v4, 0x7f0b0150

    const v3, 0x7f0b0151

    .line 184
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b014c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b014f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0152

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0153

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0154

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0155

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xc2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0152

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xc4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0156

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0157

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b014f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0153

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0158

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0159

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b015a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b015b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b015c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xeb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b015d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method private static addMTMMSErrorsToMap()V
    .locals 4

    .prologue
    const v3, 0x7f0b0151

    .line 243
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b014c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0155

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xc2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0152

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0157

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b014e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0153

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b014d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-void
.end method

.method private static checkBackgroundDataEnabled()Z
    .locals 1

    .prologue
    .line 749
    const/4 v0, 0x0

    return v0
.end method

.method private checkMmsNetworkAvailability()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 668
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->hasMmsApn()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/NetworkManager;->isAirplaneModeEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/NetworkManager;->isSIMCardReady()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isDataEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 672
    :cond_0
    sget-boolean v2, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 673
    const-string v2, "NetworkManager"

    const-string v4, "MMS-STATUS - Restricted conditions: keep availability disabled"

    invoke-static {v2, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v2, v3

    .line 701
    :cond_2
    :goto_0
    return v2

    .line 683
    :cond_3
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isGSM()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isDefaultApnAvailable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 684
    const-string v3, "NetworkManager"

    const-string v4, "MMS-STATUS - Default APN not available, enabling availability"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 692
    :cond_4
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->getDefaultMMSDataConnection()I

    move-result v0

    .line 693
    .local v0, "dataConnection":I
    sget-object v4, Lcom/motorola/messaging/transaction/NetworkManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 694
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 698
    :cond_5
    sget-boolean v2, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v2, :cond_6

    .line 699
    const-string v2, "NetworkManager"

    const-string v4, "MMS-STATUS - Network is not available (framework)"

    invoke-static {v2, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v2, v3

    .line 701
    goto :goto_0
.end method

.method private static ensureRouteToHost(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 940
    .line 942
    :try_start_0
    invoke-static {p0}, Lcom/motorola/messaging/transaction/NetworkManager;->getIpFromHost(Ljava/lang/String;)I

    move-result v0

    .line 943
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->getDefaultMMSDataConnection()I

    move-result v1

    invoke-static {v1, v0}, Lcom/motorola/messaging/transaction/NetworkManager;->requestRouteToHost(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :goto_0
    return v0

    .line 945
    :catch_0
    move-exception v0

    .line 946
    const-string v1, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS-STATUS - ensureRouteToHost exception, stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/motorola/messaging/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static ensureRouteToHost(ILjava/lang/String;Lcom/motorola/messaging/transaction/TransactionSettings;)Ljava/net/InetAddress;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0xc8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 851
    sget-boolean v0, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 852
    const-string v0, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureRouteToHost, ipVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :cond_0
    invoke-virtual {p2}, Lcom/motorola/messaging/transaction/TransactionSettings;->isProxySet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 858
    invoke-virtual {p2}, Lcom/motorola/messaging/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v0

    .line 864
    :goto_0
    invoke-static {v0}, Lcom/motorola/messaging/transaction/NetworkManager;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    .line 867
    :try_start_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getUTMsgNumber()I

    move-result v3

    if-ne v3, v8, :cond_1

    .line 868
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/app/route.sh"

    aput-object v5, v3, v4

    .line 869
    invoke-static {v3}, Lcom/motorola/messaging/transaction/TransactionManager;->doRuntime([Ljava/lang/String;)V

    .line 872
    :cond_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getVZWIPv6Enabled()Z

    move-result v3

    if-nez v3, :cond_7

    .line 874
    invoke-static {v0}, Lcom/motorola/messaging/transaction/NetworkManager;->ensureRouteToHost(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 875
    new-instance v0, Ljava/io/IOException;

    const-string v1, "host not found or no route to host"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getUTMsgNumber()I

    move-result v1

    if-ne v1, v8, :cond_2

    .line 901
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "/system/app/after_route.sh"

    aput-object v2, v1, v7

    .line 902
    invoke-static {v1}, Lcom/motorola/messaging/transaction/TransactionManager;->doRuntime([Ljava/lang/String;)V

    .line 903
    :cond_2
    throw v0

    .line 860
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 861
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 900
    :cond_4
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getUTMsgNumber()I

    move-result v0

    if-ne v0, v8, :cond_5

    .line 901
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "/system/app/after_route.sh"

    aput-object v2, v0, v7

    .line 902
    invoke-static {v0}, Lcom/motorola/messaging/transaction/TransactionManager;->doRuntime([Ljava/lang/String;)V

    :cond_5
    move-object v0, v1

    .line 906
    :cond_6
    :goto_1
    return-object v0

    .line 882
    :cond_7
    if-eqz p0, :cond_8

    if-eqz v2, :cond_9

    .line 883
    :cond_8
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1, v0}, Lcom/motorola/messaging/transaction/NetworkManager;->ensureRouteToHost(ZLjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 895
    :goto_2
    if-nez v0, :cond_b

    .line 896
    new-instance v0, Ljava/io/IOException;

    const-string v1, "host not found or no route to host"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_9
    if-ne p0, v6, :cond_a

    .line 886
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/motorola/messaging/transaction/NetworkManager;->ensureRouteToHost(ZLjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_2

    .line 888
    :cond_a
    const/4 v2, 0x2

    if-ne p0, v2, :cond_d

    .line 889
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/motorola/messaging/transaction/NetworkManager;->ensureRouteToHost(ZLjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 890
    if-nez v1, :cond_c

    .line 891
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/motorola/messaging/transaction/NetworkManager;->ensureRouteToHost(ZLjava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_2

    .line 900
    :cond_b
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getUTMsgNumber()I

    move-result v1

    if-ne v1, v8, :cond_6

    .line 901
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "/system/app/after_route.sh"

    aput-object v2, v1, v7

    .line 902
    invoke-static {v1}, Lcom/motorola/messaging/transaction/TransactionManager;->doRuntime([Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    move-object v0, v1

    goto :goto_2

    :cond_d
    move-object v0, v1

    goto :goto_2
.end method

.method private static ensureRouteToHost(ZLjava/lang/String;)Ljava/net/InetAddress;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 911
    sget-boolean v0, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 912
    const-string v0, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureRouteToHost, ipV6="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/motorola/messaging/transaction/NetworkManager;->getIpFromHost(ZLjava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 925
    const/4 v0, 0x0

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_1

    .line 927
    :try_start_1
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->getDefaultMMSDataConnection()I

    move-result v2

    aget-object v4, v3, v0

    invoke-static {p0, v2, v4}, Lcom/motorola/messaging/transaction/NetworkManager;->requestRouteToHost(ZILjava/net/InetAddress;)V

    .line 928
    aget-object v0, v3, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 935
    :goto_1
    return-object v0

    .line 919
    :catch_0
    move-exception v0

    .line 920
    const-string v2, "NetworkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - ensureRouteToHost exception, stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/motorola/messaging/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 921
    goto :goto_1

    .line 930
    :catch_1
    move-exception v2

    .line 931
    const-string v4, "NetworkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS-STATUS - ensureRouteToHost exception, stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/motorola/messaging/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static getCDMASMSErrorDescription(II)Ljava/lang/String;
    .locals 3
    .param p0, "resultCode"    # I
    .param p1, "error"    # I

    .prologue
    .line 362
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0104

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultMMSDataConnection()I
    .locals 2

    .prologue
    .line 543
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionManager;->getInstance()Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/transaction/TransactionManager;->getNetworkManager()Lcom/motorola/messaging/transaction/NetworkManager;

    move-result-object v0

    .line 545
    .local v0, "networkManager":Lcom/motorola/messaging/transaction/NetworkManager;
    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/NetworkManager;->mustUseHIPRI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    const/4 v1, 0x5

    .line 549
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static getDefaultMMSFeature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 554
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionManager;->getInstance()Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/transaction/TransactionManager;->getNetworkManager()Lcom/motorola/messaging/transaction/NetworkManager;

    move-result-object v0

    .line 556
    .local v0, "networkManager":Lcom/motorola/messaging/transaction/NetworkManager;
    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/NetworkManager;->mustUseHIPRI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->FEATURE_ENABLE_HIPRI:Ljava/lang/String;

    .line 560
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->FEATURE_ENABLE_MMS:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getIpFromHost(Ljava/lang/String;)I
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 601
    sget-boolean v1, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 602
    const-string v1, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get IP for host="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_0
    invoke-static {p0}, Lcom/motorola/messaging/transaction/NetworkManager;->lookupHost(Ljava/lang/String;)I

    move-result v0

    .line 606
    .local v0, "inetAddr":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 607
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot establish route for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Unknown host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 610
    :cond_1
    sget-boolean v1, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 611
    const-string v1, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lookupHost RET, inetAddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_2
    return v0
.end method

.method public static getIpFromHost(ZLjava/lang/String;)[Ljava/net/InetAddress;
    .locals 4
    .param p0, "isIpV6"    # Z
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 580
    sget-boolean v1, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 581
    const-string v1, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get IP for host, isIpV6="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", host="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_0
    invoke-static {p1, p0}, Lcom/motorola/messaging/frameworkadapter/motorola/MotoConnectivity;->getAllByName2(Ljava/lang/String;Z)[Ljava/net/InetAddress;

    move-result-object v0

    .line 587
    .local v0, "inetAddresses":[Ljava/net/InetAddress;
    if-nez v0, :cond_1

    .line 588
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot establish route for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Unknown host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 591
    :cond_1
    sget-boolean v1, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 592
    const-string v1, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host found, number of ip addresses="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_2
    return-object v0
.end method

.method public static getMMSErrorDetail(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 354
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MMSErrorDetail:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getMMSMOErrorDescription(I)Ljava/lang/String;
    .locals 5
    .param p0, "error"    # I

    .prologue
    .line 320
    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 321
    .local v0, "stID":Ljava/lang/Integer;
    if-eqz p0, :cond_0

    if-nez v0, :cond_1

    .line 324
    :cond_0
    const v1, 0x7f0b014d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 327
    :cond_1
    sget-boolean v1, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 328
    const-string v1, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMMSMOErrorDescription, error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", desc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_2
    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMMSMTErrorDescription(I)Ljava/lang/String;
    .locals 5
    .param p0, "error"    # I

    .prologue
    .line 337
    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 338
    .local v0, "stID":Ljava/lang/Integer;
    if-eqz p0, :cond_0

    if-nez v0, :cond_1

    .line 341
    :cond_0
    const v1, 0x7f0b014d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 344
    :cond_1
    sget-boolean v1, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 345
    const-string v1, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMMSMTErrorDescription, error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", desc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_2
    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNetworkRestriction()Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;
    .locals 2

    .prologue
    .line 1088
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionManager;->getInstance()Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/transaction/TransactionManager;->getNetworkManager()Lcom/motorola/messaging/transaction/NetworkManager;

    move-result-object v0

    .line 1090
    .local v0, "networkManager":Lcom/motorola/messaging/transaction/NetworkManager;
    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/NetworkManager;->isAirplaneModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1091
    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_AIRPLANE_MODE:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    .line 1102
    :goto_0
    return-object v1

    .line 1094
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isDataEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1095
    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_DATA_DISABLED:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    goto :goto_0

    .line 1098
    :cond_1
    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/NetworkManager;->isMmsNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1099
    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_NETWORK_UNAVAILABLE:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    goto :goto_0

    .line 1102
    :cond_2
    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;->NONE:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    goto :goto_0
.end method

.method public static hasMmsApn()Z
    .locals 5

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 452
    .local v0, "hasApn":Z
    new-instance v1, Lcom/motorola/messaging/transaction/TransactionSettings;

    sget-object v2, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;->ANY:Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/messaging/transaction/TransactionSettings;-><init>(Landroid/content/Context;Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;Ljava/lang/String;)V

    .line 454
    .local v1, "settings":Lcom/motorola/messaging/transaction/TransactionSettings;
    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {v1}, Lcom/motorola/messaging/transaction/TransactionSettings;->isValid()Z

    move-result v0

    .line 458
    :cond_0
    if-nez v0, :cond_1

    .line 459
    sget-boolean v2, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 460
    const-string v2, "NetworkManager"

    const-string v3, "MMS-STATUS - MMS APN not configured"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_1
    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    sget-boolean v1, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 125
    const-string v1, "NetworkManager"

    const-string v2, "init"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    sput-object p0, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sput-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->mResolver:Landroid/content/ContentResolver;

    .line 130
    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    sput-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 132
    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sput-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 133
    new-instance v1, Lcom/motorola/messaging/frameworkadapter/motorola/TelephonyManagerExtension;

    sget-object v2, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/motorola/messaging/frameworkadapter/motorola/TelephonyManagerExtension;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->mTelephonyManagerExt:Lcom/motorola/messaging/frameworkadapter/motorola/TelephonyManagerExtension;

    .line 135
    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    .line 137
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->addMOMMSErrorsToMap()V

    .line 140
    :cond_1
    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 141
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    .line 142
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->addMTMMSErrorsToMap()V

    .line 145
    :cond_2
    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    if-nez v1, :cond_3

    .line 146
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    .line 147
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->addCDMASMSErrorsToMap()V

    .line 150
    :cond_3
    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->MMSErrorDetail:Ljava/util/HashMap;

    if-nez v1, :cond_4

    .line 151
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->MMSErrorDetail:Ljava/util/HashMap;

    .line 154
    :cond_4
    new-instance v0, Lcom/motorola/messaging/transaction/NetworkManager$1;

    invoke-direct {v0}, Lcom/motorola/messaging/transaction/NetworkManager$1;-><init>()V

    .line 159
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "Initialize_MccMnc"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 160
    return-void
.end method

.method public static isConcurrentVoiceAndData()Z
    .locals 5

    .prologue
    .line 385
    const/4 v1, 0x0

    .line 387
    .local v1, "result":Z
    sget-object v2, Lcom/motorola/messaging/transaction/NetworkManager;->mEmulVoiceAndData:Lcom/motorola/messaging/transaction/NetworkManager$VoiceAndData;

    sget-object v3, Lcom/motorola/messaging/transaction/NetworkManager$VoiceAndData;->NONE:Lcom/motorola/messaging/transaction/NetworkManager$VoiceAndData;

    if-eq v2, v3, :cond_1

    .line 388
    sget-object v2, Lcom/motorola/messaging/transaction/NetworkManager;->mEmulVoiceAndData:Lcom/motorola/messaging/transaction/NetworkManager$VoiceAndData;

    sget-object v3, Lcom/motorola/messaging/transaction/NetworkManager$VoiceAndData;->SUPPORTED:Lcom/motorola/messaging/transaction/NetworkManager$VoiceAndData;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 394
    :goto_0
    sget-object v2, Lcom/motorola/messaging/transaction/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 395
    .local v0, "networkType":I
    const-string v2, "NetworkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Concurrent voice and data, support="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gsm mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isGSM()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return v1

    .line 388
    .end local v0    # "networkType":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 391
    :cond_1
    sget-object v2, Lcom/motorola/messaging/transaction/NetworkManager;->mTelephonyManagerExt:Lcom/motorola/messaging/frameworkadapter/motorola/TelephonyManagerExtension;

    invoke-virtual {v2}, Lcom/motorola/messaging/frameworkadapter/motorola/TelephonyManagerExtension;->isConcurrentVoiceAndData()Z

    move-result v1

    goto :goto_0
.end method

.method public static isDataEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 763
    sget-object v2, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 766
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/motorola/messaging/frameworkadapter/motorola/MotoConnectivity;->getMobileDataEnabled(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getEnableMmsWhenDataDisabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 791
    :cond_0
    :goto_0
    return v1

    .line 772
    :cond_1
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->checkBackgroundDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/motorola/messaging/transaction/NetworkManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "background_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 774
    sget-boolean v2, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 775
    const-string v2, "NetworkManager"

    const-string v3, "isDataEnabled, background data disabled"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 781
    :cond_2
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isRoaming()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 783
    sget-object v2, Lcom/motorola/messaging/transaction/NetworkManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "data_roaming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    .line 784
    sget-boolean v2, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 785
    const-string v2, "NetworkManager"

    const-string v3, "isDataEnabled, roaming data disabled"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 791
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isDefaultApnAvailable()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 505
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v3, v11

    const/4 v0, 0x1

    const-string v1, "type"

    aput-object v1, v3, v0

    .line 506
    .local v3, "APN_PROJECTION":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 507
    .local v7, "APN_COLUMN_NAME":I
    const/4 v8, 0x1

    .line 508
    .local v8, "APN_COLUMN_TYPE":I
    const/4 v10, 0x0

    .line 512
    .local v10, "foundDefault":Z
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "current"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 513
    .local v2, "table":Landroid/net/Uri;
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 516
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 517
    const-string v0, "NetworkManager"

    const-string v1, "isDefaultApnAvailable, no APNs found on database, apn"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v11

    .line 539
    :goto_0
    return v0

    .line 522
    :cond_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 523
    sget-boolean v0, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 524
    const-string v0, "NetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDefaultApnAvailable, verifying APN "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_1
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->APN_TYPE_DEFAULT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/motorola/messaging/transaction/NetworkManager;->isValidAPNType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    sget-boolean v0, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 530
    const-string v0, "NetworkManager"

    const-string v1, "isDefaultApnAvailable, default APN found"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    :cond_2
    const/4 v10, 0x1

    .line 537
    :cond_3
    invoke-static {v9}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    move v0, v10

    .line 539
    goto :goto_0

    .line 537
    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static isIPv4Address(Ljava/lang/String;)Z
    .locals 9
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 809
    if-eqz p0, :cond_0

    const-string v7, "."

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "."

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 837
    :cond_0
    :goto_0
    return v6

    .line 813
    :cond_1
    const-string v7, "\\."

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 814
    .local v5, "stOctets":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 816
    .local v4, "octets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    array-length v7, v5

    const/4 v8, 0x4

    if-gt v7, v8, :cond_0

    .line 821
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    array-length v7, v5

    if-ge v1, v7, :cond_2

    .line 822
    aget-object v7, v5, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 823
    .local v3, "octet":I
    if-ltz v3, :cond_0

    const/16 v7, 0xff

    if-gt v3, v7, :cond_0

    .line 827
    int-to-byte v7, v3

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 830
    .end local v3    # "octet":I
    :cond_2
    invoke-static {v4}, Lcom/motorola/messaging/util/StringUtils;->toBytesArray(Ljava/util/List;)[B

    move-result-object v7

    invoke-static {p0, v7}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v2

    .line 831
    .local v2, "ipAddress":Ljava/net/InetAddress;
    instance-of v6, v2, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 833
    .end local v2    # "ipAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 834
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 836
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 837
    .local v0, "ex":Ljava/net/UnknownHostException;
    goto :goto_0
.end method

.method public static isInternationalRoaming()Z
    .locals 2

    .prologue
    .line 757
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnCall()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "onCall":Z
    sget-object v3, Lcom/motorola/messaging/transaction/NetworkManager;->mEmulateCall:Lcom/motorola/messaging/transaction/NetworkManager$CallState;

    sget-object v4, Lcom/motorola/messaging/transaction/NetworkManager$CallState;->NONE:Lcom/motorola/messaging/transaction/NetworkManager$CallState;

    if-eq v3, v4, :cond_1

    .line 406
    sget-object v3, Lcom/motorola/messaging/transaction/NetworkManager;->mEmulateCall:Lcom/motorola/messaging/transaction/NetworkManager$CallState;

    sget-object v4, Lcom/motorola/messaging/transaction/NetworkManager$CallState;->IDLE:Lcom/motorola/messaging/transaction/NetworkManager$CallState;

    if-eq v3, v4, :cond_0

    move v0, v1

    .line 412
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 406
    goto :goto_0

    .line 409
    :cond_1
    sget-object v3, Lcom/motorola/messaging/transaction/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public static isRequiredMMSC()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 1044
    invoke-static {}, Lcom/motorola/messaging/settings/CustomerManager;->getCustomer()Ljava/lang/String;

    move-result-object v1

    .line 1047
    const-string v2, "verizon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "usc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return v0

    .line 1051
    :cond_1
    sget-object v2, Lcom/motorola/messaging/transaction/NetworkManager;->mApnMCC:Ljava/lang/String;

    sget-object v3, Lcom/motorola/messaging/transaction/NetworkManager;->mApnMNC:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/motorola/messaging/settings/CustomerManager;->getCustomerFromMccMnc(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/messaging/settings/CustomerManager$Customer;

    move-result-object v2

    .line 1053
    sget-boolean v3, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v3, :cond_2

    .line 1054
    const-string v3, "NetworkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRequiredMMSC, mcc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/messaging/transaction/NetworkManager;->mApnMCC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/messaging/transaction/NetworkManager;->mApnMNC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Customer based on network="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :cond_2
    sget-object v3, Lcom/motorola/messaging/settings/CustomerManager$Customer;->NONE:Lcom/motorola/messaging/settings/CustomerManager$Customer;

    if-eq v2, v3, :cond_0

    .line 1065
    const-string v3, "verizon"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/motorola/messaging/settings/CustomerManager$Customer;->VERIZON:Lcom/motorola/messaging/settings/CustomerManager$Customer;

    if-ne v2, v3, :cond_4

    :cond_3
    const-string v3, "usc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/messaging/settings/CustomerManager$Customer;->USC:Lcom/motorola/messaging/settings/CustomerManager$Customer;

    if-eq v2, v1, :cond_0

    .line 1067
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRoaming()Z
    .locals 1

    .prologue
    .line 753
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method public static isValidAPNType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "types"    # Ljava/lang/String;

    .prologue
    .line 468
    sget-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->APN_TYPE_MMS:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/messaging/transaction/NetworkManager;->isValidAPNType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isMMSHIPRIEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->APN_TYPE_HIPRI:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/messaging/transaction/NetworkManager;->isValidAPNType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidAPNType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "types"    # Ljava/lang/String;
    .param p1, "requestType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 474
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 475
    sget-boolean v5, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 476
    const-string v5, "NetworkManager"

    const-string v6, "isValidAPNType true, EMPTY"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_0
    :goto_0
    return v4

    .line 483
    :cond_1
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 484
    .local v3, "t":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 485
    sget-boolean v5, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 486
    const-string v5, "NetworkManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isValidAPNType true, type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_2
    sget-object v5, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->APN_TYPE_ALL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 490
    sget-boolean v5, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 491
    const-string v5, "NetworkManager"

    const-string v6, "isValidAPNType true, ALL"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 483
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 497
    .end local v3    # "t":Ljava/lang/String;
    :cond_4
    sget-boolean v4, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v4, :cond_5

    .line 498
    const-string v4, "NetworkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isValidAPNType false, type searched="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static lookupHost(Ljava/lang/String;)I
    .locals 6
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    .line 619
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 625
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 626
    .local v1, "addrBytes":[B
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .line 630
    .end local v1    # "addrBytes":[B
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    :goto_0
    return v0

    .line 620
    :catch_0
    move-exception v2

    .line 621
    .local v2, "e":Ljava/net/UnknownHostException;
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static onCallDropped()V
    .locals 2

    .prologue
    .line 416
    const-string v0, "NetworkManager"

    const-string v1, "MMS-STATUS - Call has dropped"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mEmulateCall:Lcom/motorola/messaging/transaction/NetworkManager$CallState;

    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager$CallState;->NONE:Lcom/motorola/messaging/transaction/NetworkManager$CallState;

    if-eq v0, v1, :cond_0

    .line 419
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager$CallState;->IDLE:Lcom/motorola/messaging/transaction/NetworkManager$CallState;

    sput-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mEmulateCall:Lcom/motorola/messaging/transaction/NetworkManager$CallState;

    .line 421
    :cond_0
    return-void
.end method

.method public static onDataSuspended()V
    .locals 2

    .prologue
    .line 424
    const-string v0, "NetworkManager"

    const-string v1, "MMS-STATUS - Data Suspended (MMS and voice call is not supported)"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public static removeMMSErrorDetail(Landroid/net/Uri;)V
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 358
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->MMSErrorDetail:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    return-void
.end method

.method public static requestRouteToHost(II)V
    .locals 3
    .param p0, "dataConnection"    # I
    .param p1, "inetAddr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    sget-boolean v0, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 652
    const-string v0, "NetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestRouteToHost, dataConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inetAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p0, p1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 660
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot establish route to proxy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_1
    return-void
.end method

.method public static requestRouteToHost(ZILjava/net/InetAddress;)V
    .locals 3
    .param p0, "isIPv6"    # Z
    .param p1, "dataConnection"    # I
    .param p2, "inetAddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    sget-boolean v0, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 636
    const-string v0, "NetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestRouteToHost, isIPv6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dataConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inetAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/motorola/messaging/frameworkadapter/motorola/MotoConnectivity;->requestRouteToHostAddress(Landroid/net/ConnectivityManager;ILjava/net/InetAddress;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 645
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot establish route to proxy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_1
    return-void
.end method

.method public static resetMccMnc()V
    .locals 1

    .prologue
    .line 999
    const-string v0, ""

    sput-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mApnMCC:Ljava/lang/String;

    .line 1000
    const-string v0, ""

    sput-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mApnMNC:Ljava/lang/String;

    .line 1001
    return-void
.end method

.method public static retrieveAPNMccMnc()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1004
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "mcc"

    aput-object v0, v3, v1

    const-string v0, "mnc"

    aput-object v0, v3, v2

    .line 1011
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1012
    const-string v0, "current"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    const-string v0, " IS NOT NULL"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1022
    if-eqz v1, :cond_1

    .line 1024
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1025
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mApnMCC:Ljava/lang/String;

    .line 1027
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mApnMNC:Ljava/lang/String;

    .line 1028
    sget-boolean v0, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1029
    const-string v0, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrieveAPNMccMnc, mcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/NetworkManager;->mApnMCC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mnc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/NetworkManager;->mApnMNC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 1041
    :cond_1
    return-void

    .line 1034
    :cond_2
    :try_start_1
    const-string v0, ""

    sput-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mApnMCC:Ljava/lang/String;

    .line 1035
    const-string v0, ""

    sput-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mApnMNC:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1038
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static retryToSendMessage(JJLjava/lang/String;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 955
    const-string v0, "sms"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 957
    invoke-static {p0, p1, p2, p3}, Lcom/motorola/messaging/transaction/MOSmsManager;->resendShortMessage(JJ)V

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 962
    const-string v0, "protocol"

    invoke-virtual {v2, v0, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 963
    const-string v0, "message"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 965
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 968
    if-eqz v6, :cond_0

    .line 970
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 972
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 973
    const-string v0, "err_type"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 974
    const-string v0, "retry_index"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 975
    const-string v0, "due_time"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 977
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 979
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 980
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 983
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/motorola/messaging/transaction/SendingProgressTokenManager;->put(Ljava/lang/Object;J)V

    .line 986
    sget-boolean v0, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 987
    const-string v0, "NetworkManager"

    const-string v1, "MMS-STATUS - Retry MMS"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    :cond_2
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/motorola/messaging/transaction/NetworkManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/motorola/messaging/transaction/TransactionService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->startService(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    :cond_3
    invoke-static {v6}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static showAllNetworkInfo()V
    .locals 7

    .prologue
    .line 370
    sget-object v4, Lcom/motorola/messaging/transaction/NetworkManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 371
    .local v2, "networks":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 372
    array-length v3, v2

    .line 373
    .local v3, "size":I
    const-string v4, "NetworkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showAllNetworkInfo, num network founds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const/4 v1, 0x0

    .line 375
    .local v1, "info":Landroid/net/NetworkInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 376
    aget-object v1, v2, v0

    .line 377
    const-string v4, "NetworkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showAllNetworkInfo, network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "size":I
    :cond_0
    return-void
.end method

.method public static trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "addr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    .line 1115
    if-nez p0, :cond_1

    .line 1116
    const/4 p0, 0x0

    .line 1140
    .end local p0    # "addr":Ljava/lang/String;
    .local v3, "octets":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1119
    .end local v3    # "octets":[Ljava/lang/String;
    .restart local p0    # "addr":Ljava/lang/String;
    :cond_1
    const-string v5, "\\."

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1120
    .restart local v3    # "octets":[Ljava/lang/String;
    array-length v5, v3

    if-ne v5, v7, :cond_0

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1125
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1126
    .local v4, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_3

    .line 1128
    :try_start_0
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v6, :cond_0

    .line 1129
    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    if-ge v2, v6, :cond_2

    .line 1135
    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1126
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1130
    :catch_0
    move-exception v1

    .line 1131
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1139
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object p0, v4

    .line 1140
    goto :goto_0
.end method


# virtual methods
.method public getConnectedMmsNetwork()Landroid/net/NetworkInfo;
    .locals 7

    .prologue
    .line 432
    const/4 v1, 0x0

    .line 434
    .local v1, "info":Landroid/net/NetworkInfo;
    :try_start_0
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->getDefaultMMSDataConnection()I

    move-result v0

    .line 435
    .local v0, "dataConnection":I
    sget-object v3, Lcom/motorola/messaging/transaction/NetworkManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 436
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 444
    const-string v3, "NetworkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConnectedMmsNetwork, apn info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .end local v1    # "info":Landroid/net/NetworkInfo;
    .local v2, "info":Landroid/net/NetworkInfo;
    :goto_0
    return-object v2

    .line 441
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v1, 0x0

    .line 444
    const-string v3, "NetworkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConnectedMmsNetwork, apn info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .end local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    goto :goto_0

    .end local v0    # "dataConnection":I
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v3

    const-string v4, "NetworkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConnectedMmsNetwork, apn info="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public isAirplaneModeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 720
    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMmsApnConnected()Z
    .locals 5

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/NetworkManager;->getConnectedMmsNetwork()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 566
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 567
    const/4 v0, 0x0

    .line 575
    :cond_0
    :goto_0
    return v0

    .line 570
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 571
    .local v0, "connected":Z
    sget-boolean v2, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 572
    const-string v2, "NetworkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - MMS APN connected state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isMmsNetworkAvailable()Z
    .locals 3

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/NetworkManager;->checkMmsNetworkAvailability()Z

    move-result v0

    .line 707
    .local v0, "isAvailable":Z
    if-nez v0, :cond_0

    .line 708
    const-string v1, "NetworkManager"

    const-string v2, "MMS-STATUS - MMS Network is not available"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/NetworkManager;->isMmsApnConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    const-string v1, "NetworkManager"

    const-string v2, "MMS-STATUS - MMS Network is not available but APN is connected, suppose network available"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const/4 v0, 0x1

    .line 716
    :cond_0
    return v0
.end method

.method public isSIMCardReady()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 725
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isGSM()Z

    move-result v2

    if-nez v2, :cond_1

    .line 727
    sget-boolean v2, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 728
    const-string v2, "NetworkManager"

    const-string v3, "isSIMCardReady, called but not in GSM mode!"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_0
    :goto_0
    return v1

    .line 735
    :cond_1
    sget-object v2, Lcom/motorola/messaging/transaction/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 736
    .local v0, "state":I
    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 740
    sget-boolean v1, Lcom/motorola/messaging/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 741
    const-string v1, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSIMCardReady, SIM is not ready = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mustUseHIPRI()Z
    .locals 1

    .prologue
    .line 1075
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isMMSHIPRIEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isRequiredMMSC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    const/4 v0, 0x1

    .line 1079
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 797
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 803
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
