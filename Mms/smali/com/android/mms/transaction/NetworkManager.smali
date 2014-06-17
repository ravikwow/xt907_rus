.class public Lcom/android/mms/transaction/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;,
        Lcom/android/mms/transaction/NetworkManager$VoiceAndData;,
        Lcom/android/mms/transaction/NetworkManager$CallState;
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

.field protected static mEmulVoiceAndData:Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

.field protected static mEmulateCall:Lcom/android/mms/transaction/NetworkManager$CallState;

.field private static mResolver:Landroid/content/ContentResolver;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 62
    sput-boolean v0, Lcom/android/mms/transaction/NetworkManager;->DEBUG:Z

    .line 63
    sget-boolean v1, Lcom/android/mms/transaction/NetworkManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    .line 86
    sput-object v3, Lcom/android/mms/transaction/NetworkManager;->mContext:Landroid/content/Context;

    .line 87
    sput-object v3, Lcom/android/mms/transaction/NetworkManager;->mResolver:Landroid/content/ContentResolver;

    .line 88
    sput-object v3, Lcom/android/mms/transaction/NetworkManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 89
    sput-object v3, Lcom/android/mms/transaction/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 114
    sget-object v0, Lcom/android/mms/transaction/NetworkManager$CallState;->NONE:Lcom/android/mms/transaction/NetworkManager$CallState;

    sput-object v0, Lcom/android/mms/transaction/NetworkManager;->mEmulateCall:Lcom/android/mms/transaction/NetworkManager$CallState;

    .line 115
    sget-object v0, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;->NONE:Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    sput-object v0, Lcom/android/mms/transaction/NetworkManager;->mEmulVoiceAndData:Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method private static addCDMASMSErrorsToMap()V
    .locals 4

    .prologue
    const v3, 0x7f0a0155

    .line 297
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0148

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0149

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a014a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a014b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a014c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a014d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a014e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a014f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0150

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0151

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0152

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0153

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0154

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0156

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0157

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0158

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0159

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a015a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a015b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a015c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a015d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a015e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a015f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0160

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0161

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0162

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0163

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0164

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0165

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0166

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0167

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0168

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0169

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a016a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a016b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a016c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a016d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a016e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a016f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0170

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0171

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0172

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0173

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8006

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0174

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8007

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0175

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0176

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x8009

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0177

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x800a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0178

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    const v1, 0x800b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0179

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    return-void
.end method

.method public static addMMSErrorDetail(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "detail"    # Ljava/lang/String;

    .prologue
    .line 186
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MMSErrorDetail:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void
.end method

.method private static addMOMMSErrorsToMap()V
    .locals 8

    .prologue
    const v7, 0x7f0a017b

    const v6, 0x7f0a0051

    const/16 v5, 0xe6

    const v4, 0x7f0a0050

    const v3, 0x7f0a0052

    .line 190
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a017a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a017c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a017d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a017e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a017f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0180

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xc2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a017d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xc4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0181

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0182

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a017c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a017e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0183

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0184

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0185

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0186

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0187

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xeb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0188

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    return-void
.end method

.method private static addMTMMSErrorsToMap()V
    .locals 4

    .prologue
    const v3, 0x7f0a0052

    .line 268
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a017a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0180

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xc2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a017d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0182

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0051

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xe3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a017e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a017b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    return-void
.end method

.method private static checkBackgroundDataEnabled()Z
    .locals 1

    .prologue
    .line 780
    const/4 v0, 0x0

    return v0
.end method

.method private checkMmsNetworkAvailability()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 691
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->hasMmsApn()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/transaction/NetworkManager;->isAirplaneModeEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/transaction/NetworkManager;->isSIMCardReady()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->isDataEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 693
    :cond_0
    sget-boolean v2, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 694
    const-string v2, "NetworkManager"

    const-string v4, "MMS-STATUS - Restricted conditions: keep availability disabled"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v2, v3

    .line 728
    :cond_2
    :goto_0
    return v2

    .line 708
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isGSM()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->isDefaultApnAvailable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 709
    const-string v3, "NetworkManager"

    const-string v4, "MMS-STATUS - Default APN not available, enabling availability"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 718
    :cond_4
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->getDefaultMMSDataConnection()I

    move-result v0

    .line 719
    .local v0, "dataConnection":I
    sget-object v4, Lcom/android/mms/transaction/NetworkManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 720
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 724
    :cond_5
    sget-boolean v2, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v2, :cond_6

    .line 725
    const-string v2, "NetworkManager"

    const-string v4, "MMS-STATUS - Network is not available (framework)"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v2, v3

    .line 728
    goto :goto_0
.end method

.method private static ensureRouteToHost(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 916
    .line 918
    :try_start_0
    invoke-static {p0}, Lcom/android/mms/transaction/NetworkManager;->getIpFromHost(Ljava/lang/String;)I

    move-result v0

    .line 919
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->getDefaultMMSDataConnection()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/mms/transaction/NetworkManager;->requestRouteToHost(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    :goto_0
    return v0

    .line 920
    :catch_0
    move-exception v0

    .line 921
    const-string v1, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS-STATUS - ensureRouteToHost exception, stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static ensureRouteToHost(ILjava/lang/String;Lcom/android/mms/transaction/TransactionSettings;)Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 890
    sget-boolean v0, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 891
    const-string v0, "NetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureRouteToHost, ipVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 897
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v0

    .line 903
    :goto_0
    invoke-static {v0}, Lcom/android/mms/transaction/NetworkManager;->isIPv4Address(Ljava/lang/String;)Z

    .line 906
    invoke-static {v0}, Lcom/android/mms/transaction/NetworkManager;->ensureRouteToHost(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 907
    new-instance v0, Ljava/io/IOException;

    const-string v1, "host not found or no route to host"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 899
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 900
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 911
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCDMASMSErrorDescription(II)Ljava/lang/String;
    .locals 3
    .param p0, "resultCode"    # I
    .param p1, "error"    # I

    .prologue
    .line 391
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    sget-object v1, Lcom/android/mms/transaction/NetworkManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0198

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultMMSDataConnection()I
    .locals 2

    .prologue
    .line 582
    invoke-static {}, Lcom/android/mms/transaction/TransactionManager;->getInstance()Lcom/android/mms/transaction/TransactionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionManager;->getNetworkManager()Lcom/android/mms/transaction/NetworkManager;

    move-result-object v0

    .line 585
    .local v0, "networkManager":Lcom/android/mms/transaction/NetworkManager;
    invoke-virtual {v0}, Lcom/android/mms/transaction/NetworkManager;->mustUseHIPRI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    const/4 v1, 0x5

    .line 588
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static getDefaultMMSFeature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 593
    invoke-static {}, Lcom/android/mms/transaction/TransactionManager;->getInstance()Lcom/android/mms/transaction/TransactionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionManager;->getNetworkManager()Lcom/android/mms/transaction/NetworkManager;

    move-result-object v0

    .line 596
    .local v0, "networkManager":Lcom/android/mms/transaction/NetworkManager;
    invoke-virtual {v0}, Lcom/android/mms/transaction/NetworkManager;->mustUseHIPRI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    const-string v1, "enableHIPRI"

    .line 599
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "enableMMS"

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
    .line 620
    sget-boolean v1, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 621
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

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_0
    invoke-static {p0}, Lcom/android/mms/transaction/NetworkManager;->lookupHost(Ljava/lang/String;)I

    move-result v0

    .line 625
    .local v0, "inetAddr":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 626
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

    .line 630
    :cond_1
    sget-boolean v1, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 631
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

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_2
    return v0
.end method

.method public static getMMSMOErrorDescription(I)Ljava/lang/String;
    .locals 5
    .param p0, "error"    # I

    .prologue
    .line 351
    sget-object v1, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 352
    .local v0, "stID":Ljava/lang/Integer;
    if-eqz p0, :cond_0

    if-nez v0, :cond_1

    .line 355
    :cond_0
    const v1, 0x7f0a017b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 358
    :cond_1
    sget-boolean v1, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 359
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

    sget-object v3, Lcom/android/mms/transaction/NetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_2
    sget-object v1, Lcom/android/mms/transaction/NetworkManager;->mContext:Landroid/content/Context;

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
    .line 367
    sget-object v1, Lcom/android/mms/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 368
    .local v0, "stID":Ljava/lang/Integer;
    if-eqz p0, :cond_0

    if-nez v0, :cond_1

    .line 371
    :cond_0
    const v1, 0x7f0a017b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 374
    :cond_1
    sget-boolean v1, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 375
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

    sget-object v3, Lcom/android/mms/transaction/NetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_2
    sget-object v1, Lcom/android/mms/transaction/NetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNetworkRestriction()Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;
    .locals 2

    .prologue
    .line 987
    invoke-static {}, Lcom/android/mms/transaction/TransactionManager;->getInstance()Lcom/android/mms/transaction/TransactionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionManager;->getNetworkManager()Lcom/android/mms/transaction/NetworkManager;

    move-result-object v0

    .line 990
    .local v0, "networkManager":Lcom/android/mms/transaction/NetworkManager;
    invoke-virtual {v0}, Lcom/android/mms/transaction/NetworkManager;->isAirplaneModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 991
    sget-object v1, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_AIRPLANE_MODE:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    .line 1002
    :goto_0
    return-object v1

    .line 994
    :cond_0
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->isDataEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 995
    sget-object v1, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_DATA_DISABLED:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    goto :goto_0

    .line 998
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/transaction/NetworkManager;->isMmsNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 999
    sget-object v1, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_NETWORK_UNAVAILABLE:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    goto :goto_0

    .line 1002
    :cond_2
    sget-object v1, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;->NONE:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    goto :goto_0
.end method

.method public static hasMmsApn()Z
    .locals 5

    .prologue
    .line 478
    const/4 v0, 0x0

    .line 482
    .local v0, "hasApn":Z
    new-instance v1, Lcom/android/mms/transaction/TransactionSettings;

    sget-object v2, Lcom/android/mms/transaction/NetworkManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/mms/transaction/TransactionSettings$RetrieveType;->ANY:Lcom/android/mms/transaction/TransactionSettings$RetrieveType;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings$RetrieveType;Ljava/lang/String;)V

    .line 485
    .local v1, "settings":Lcom/android/mms/transaction/TransactionSettings;
    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionSettings;->isValid()Z

    move-result v0

    .line 489
    :cond_0
    if-nez v0, :cond_1

    .line 490
    sget-boolean v2, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 491
    const-string v2, "NetworkManager"

    const-string v3, "MMS-STATUS - MMS APN not configured"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_1
    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    sget-boolean v1, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "NetworkManager"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    sput-object p0, Lcom/android/mms/transaction/NetworkManager;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sput-object v1, Lcom/android/mms/transaction/NetworkManager;->mResolver:Landroid/content/ContentResolver;

    .line 134
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    sput-object v1, Lcom/android/mms/transaction/NetworkManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 136
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sput-object v1, Lcom/android/mms/transaction/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 139
    sget-object v1, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/mms/transaction/NetworkManager;->MOMMSErrorMap:Ljava/util/HashMap;

    .line 141
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->addMOMMSErrorsToMap()V

    .line 144
    :cond_1
    sget-object v1, Lcom/android/mms/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 145
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/mms/transaction/NetworkManager;->MTMMSErrorMap:Ljava/util/HashMap;

    .line 146
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->addMTMMSErrorsToMap()V

    .line 149
    :cond_2
    sget-object v1, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    if-nez v1, :cond_3

    .line 150
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/mms/transaction/NetworkManager;->CDMASMSErrorMap:Ljava/util/HashMap;

    .line 151
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->addCDMASMSErrorsToMap()V

    .line 154
    :cond_3
    sget-object v1, Lcom/android/mms/transaction/NetworkManager;->MMSErrorDetail:Ljava/util/HashMap;

    if-nez v1, :cond_4

    .line 155
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/mms/transaction/NetworkManager;->MMSErrorDetail:Ljava/util/HashMap;

    .line 158
    :cond_4
    new-instance v0, Lcom/android/mms/transaction/NetworkManager$1;

    invoke-direct {v0}, Lcom/android/mms/transaction/NetworkManager$1;-><init>()V

    .line 163
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->getInstance()Lcom/android/mms/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "Initialize_MccMnc"

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/android/mms/concurrent/TaskManager$Task;

    .line 165
    return-void
.end method

.method public static isConcurrentVoiceAndData()Z
    .locals 5

    .prologue
    .line 416
    const/4 v1, 0x0

    .line 418
    .local v1, "result":Z
    sget-object v2, Lcom/android/mms/transaction/NetworkManager;->mEmulVoiceAndData:Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    sget-object v3, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;->NONE:Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    if-eq v2, v3, :cond_1

    .line 419
    sget-object v2, Lcom/android/mms/transaction/NetworkManager;->mEmulVoiceAndData:Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    sget-object v3, Lcom/android/mms/transaction/NetworkManager$VoiceAndData;->SUPPORTED:Lcom/android/mms/transaction/NetworkManager$VoiceAndData;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 424
    :goto_0
    sget-object v2, Lcom/android/mms/transaction/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 425
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

    invoke-static {}, Lcom/android/mms/MmsConfig;->isGSM()Z

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

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return v1

    .line 419
    .end local v0    # "networkType":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 421
    :cond_1
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->isConcurrentVoiceAndDataTM()Z

    move-result v1

    goto :goto_0
.end method

.method private static isConcurrentVoiceAndDataTM()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1046
    sget-object v3, Lcom/android/mms/transaction/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 1047
    .local v0, "networkType":I
    sget-object v3, Lcom/android/mms/transaction/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1048
    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    .line 1052
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1048
    goto :goto_0

    .line 1049
    :cond_2
    sget-object v3, Lcom/android/mms/transaction/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 1050
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 1052
    goto :goto_0
.end method

.method public static isDataEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 794
    sget-object v2, Lcom/android/mms/transaction/NetworkManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 797
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/mms/util/MotoConnectivity;->getMobileDataEnabled(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsWhenDataDisabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 825
    :cond_0
    :goto_0
    return v1

    .line 804
    :cond_1
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->checkBackgroundDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/mms/transaction/NetworkManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "background_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 807
    sget-boolean v2, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 808
    const-string v2, "NetworkManager"

    const-string v3, "isDataEnabled, background data disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 814
    :cond_2
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->isRoaming()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 816
    sget-object v2, Lcom/android/mms/transaction/NetworkManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "data_roaming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    .line 818
    sget-boolean v2, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 819
    const-string v2, "NetworkManager"

    const-string v3, "isDataEnabled, roaming data disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 825
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isDefaultApnAvailable()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 538
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v3, v11

    const/4 v0, 0x1

    const-string v1, "type"

    aput-object v1, v3, v0

    .line 540
    .local v3, "APN_PROJECTION":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 541
    .local v7, "APN_COLUMN_NAME":I
    const/4 v8, 0x1

    .line 542
    .local v8, "APN_COLUMN_TYPE":I
    const/4 v10, 0x0

    .line 546
    .local v10, "foundDefault":Z
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "current"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 548
    .local v2, "table":Landroid/net/Uri;
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/NetworkManager;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 551
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 552
    const-string v0, "NetworkManager"

    const-string v1, "isDefaultApnAvailable, no APNs found on database, apn"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 578
    :goto_0
    return v0

    .line 558
    :cond_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 559
    sget-boolean v0, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 560
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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_1
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-static {v0, v1}, Lcom/android/mms/transaction/NetworkManager;->isValidAPNType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    sget-boolean v0, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 568
    const-string v0, "NetworkManager"

    const-string v1, "isDefaultApnAvailable, default APN found"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    :cond_2
    const/4 v10, 0x1

    .line 576
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 578
    goto :goto_0

    .line 576
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static isIPv4Address(Ljava/lang/String;)Z
    .locals 9
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 846
    if-eqz p0, :cond_0

    const-string v7, "."

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "."

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 873
    :cond_0
    :goto_0
    return v6

    .line 850
    :cond_1
    const-string v7, "\\."

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 851
    .local v5, "stOctets":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 853
    .local v4, "octets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    array-length v7, v5

    const/4 v8, 0x4

    if-gt v7, v8, :cond_0

    .line 858
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    array-length v7, v5

    if-ge v1, v7, :cond_2

    .line 859
    aget-object v7, v5, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 860
    .local v3, "octet":I
    if-ltz v3, :cond_0

    const/16 v7, 0xff

    if-gt v3, v7, :cond_0

    .line 864
    int-to-byte v7, v3

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 867
    .end local v3    # "octet":I
    :cond_2
    invoke-static {v4}, Lcom/android/mms/transaction/NetworkManager;->toBytesArray(Ljava/util/List;)[B

    move-result-object v7

    invoke-static {p0, v7}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v2

    .line 869
    .local v2, "ipAddress":Ljava/net/InetAddress;
    instance-of v6, v2, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 870
    .end local v2    # "ipAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 871
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 872
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 873
    .local v0, "ex":Ljava/net/UnknownHostException;
    goto :goto_0
.end method

.method public static isOnCall()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, "onCall":Z
    sget-object v3, Lcom/android/mms/transaction/NetworkManager;->mEmulateCall:Lcom/android/mms/transaction/NetworkManager$CallState;

    sget-object v4, Lcom/android/mms/transaction/NetworkManager$CallState;->NONE:Lcom/android/mms/transaction/NetworkManager$CallState;

    if-eq v3, v4, :cond_1

    .line 435
    sget-object v3, Lcom/android/mms/transaction/NetworkManager;->mEmulateCall:Lcom/android/mms/transaction/NetworkManager$CallState;

    sget-object v4, Lcom/android/mms/transaction/NetworkManager$CallState;->IDLE:Lcom/android/mms/transaction/NetworkManager$CallState;

    if-eq v3, v4, :cond_0

    move v0, v1

    .line 440
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 435
    goto :goto_0

    .line 437
    :cond_1
    sget-object v3, Lcom/android/mms/transaction/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

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

.method public static isRoaming()Z
    .locals 1

    .prologue
    .line 784
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method public static isValidAPNType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "types"    # Ljava/lang/String;

    .prologue
    .line 499
    const-string v0, "mms"

    invoke-static {p0, v0}, Lcom/android/mms/transaction/NetworkManager;->isValidAPNType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isMMSHIPRIEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "hipri"

    invoke-static {p0, v0}, Lcom/android/mms/transaction/NetworkManager;->isValidAPNType(Ljava/lang/String;Ljava/lang/String;)Z

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

    .line 506
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 507
    sget-boolean v5, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 508
    const-string v5, "NetworkManager"

    const-string v6, "isValidAPNType true, EMPTY"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    :goto_0
    return v4

    .line 515
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

    .line 516
    .local v3, "t":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 517
    sget-boolean v5, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 518
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

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 521
    :cond_2
    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 522
    sget-boolean v5, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 523
    const-string v5, "NetworkManager"

    const-string v6, "isValidAPNType true, ALL"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 515
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 529
    .end local v3    # "t":Ljava/lang/String;
    :cond_4
    sget-boolean v4, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v4, :cond_5

    .line 530
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

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static lookupHost(Ljava/lang/String;)I
    .locals 6
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    .line 639
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 645
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 646
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

    .line 648
    .end local v1    # "addrBytes":[B
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    :goto_0
    return v0

    .line 640
    :catch_0
    move-exception v2

    .line 641
    .local v2, "e":Ljava/net/UnknownHostException;
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static onCallDropped()V
    .locals 2

    .prologue
    .line 444
    const-string v0, "NetworkManager"

    const-string v1, "MMS-STATUS - Call has dropped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->mEmulateCall:Lcom/android/mms/transaction/NetworkManager$CallState;

    sget-object v1, Lcom/android/mms/transaction/NetworkManager$CallState;->NONE:Lcom/android/mms/transaction/NetworkManager$CallState;

    if-eq v0, v1, :cond_0

    .line 447
    sget-object v0, Lcom/android/mms/transaction/NetworkManager$CallState;->IDLE:Lcom/android/mms/transaction/NetworkManager$CallState;

    sput-object v0, Lcom/android/mms/transaction/NetworkManager;->mEmulateCall:Lcom/android/mms/transaction/NetworkManager$CallState;

    .line 449
    :cond_0
    return-void
.end method

.method public static onDataSuspended()V
    .locals 2

    .prologue
    .line 452
    const-string v0, "NetworkManager"

    const-string v1, "MMS-STATUS - Data Suspended (MMS and voice call is not supported)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method public static removeMMSErrorDetail(Landroid/net/Uri;)V
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 387
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->MMSErrorDetail:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
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
    .line 672
    sget-boolean v0, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 673
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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p0, p1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 681
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

    .line 683
    :cond_1
    return-void
.end method

.method public static resetMccMnc()V
    .locals 1

    .prologue
    .line 930
    const-string v0, ""

    sput-object v0, Lcom/android/mms/transaction/NetworkManager;->mApnMCC:Ljava/lang/String;

    .line 931
    const-string v0, ""

    sput-object v0, Lcom/android/mms/transaction/NetworkManager;->mApnMNC:Ljava/lang/String;

    .line 932
    return-void
.end method

.method public static retrieveAPNMccMnc()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 935
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "mcc"

    aput-object v0, v3, v1

    const-string v0, "mnc"

    aput-object v0, v3, v2

    .line 941
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 942
    const-string v0, "current"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    const-string v0, " IS NOT NULL"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/NetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 949
    if-eqz v1, :cond_1

    .line 951
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 952
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/NetworkManager;->mApnMCC:Ljava/lang/String;

    .line 954
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/NetworkManager;->mApnMNC:Ljava/lang/String;

    .line 955
    sget-boolean v0, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 956
    const-string v0, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrieveAPNMccMnc, mcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/NetworkManager;->mApnMCC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mnc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/NetworkManager;->mApnMNC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 968
    :cond_1
    return-void

    .line 961
    :cond_2
    :try_start_1
    const-string v0, ""

    sput-object v0, Lcom/android/mms/transaction/NetworkManager;->mApnMCC:Ljava/lang/String;

    .line 962
    const-string v0, ""

    sput-object v0, Lcom/android/mms/transaction/NetworkManager;->mApnMNC:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 965
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static showAllNetworkInfo()V
    .locals 7

    .prologue
    .line 399
    sget-object v4, Lcom/android/mms/transaction/NetworkManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 400
    .local v2, "networks":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 401
    array-length v3, v2

    .line 402
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

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v1, 0x0

    .line 404
    .local v1, "info":Landroid/net/NetworkInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 405
    aget-object v1, v2, v0

    .line 406
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

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "size":I
    :cond_0
    return-void
.end method

.method public static toBytesArray(Ljava/util/List;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1056
    .local p0, "bytes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Byte;

    invoke-interface {p0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Byte;

    .line 1057
    .local v1, "in":[Ljava/lang/Byte;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [B

    .line 1058
    .local v2, "out":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1059
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 1058
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1062
    :cond_0
    return-object v2
.end method

.method public static trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "addr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    .line 1016
    if-nez p0, :cond_1

    .line 1017
    const/4 p0, 0x0

    .line 1042
    .end local p0    # "addr":Ljava/lang/String;
    .local v3, "octets":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1020
    .end local v3    # "octets":[Ljava/lang/String;
    .restart local p0    # "addr":Ljava/lang/String;
    :cond_1
    const-string v5, "\\."

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1021
    .restart local v3    # "octets":[Ljava/lang/String;
    array-length v5, v3

    if-ne v5, v7, :cond_0

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1026
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1027
    .local v4, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_3

    .line 1029
    :try_start_0
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v6, :cond_0

    .line 1031
    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    if-ge v2, v6, :cond_2

    .line 1037
    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1027
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1032
    :catch_0
    move-exception v1

    .line 1033
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1041
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object p0, v4

    .line 1042
    goto :goto_0
.end method


# virtual methods
.method public getConnectedMmsNetwork()Landroid/net/NetworkInfo;
    .locals 7

    .prologue
    .line 461
    const/4 v1, 0x0

    .line 463
    .local v1, "info":Landroid/net/NetworkInfo;
    :try_start_0
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->getDefaultMMSDataConnection()I

    move-result v0

    .line 464
    .local v0, "dataConnection":I
    sget-object v3, Lcom/android/mms/transaction/NetworkManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 465
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 473
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

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .end local v1    # "info":Landroid/net/NetworkInfo;
    .local v2, "info":Landroid/net/NetworkInfo;
    :goto_0
    return-object v2

    .line 470
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v1, 0x0

    .line 473
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

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v3
.end method

.method public isAirplaneModeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 749
    sget-object v1, Lcom/android/mms/transaction/NetworkManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMmsApnConnected()Z
    .locals 5

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/android/mms/transaction/NetworkManager;->getConnectedMmsNetwork()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 605
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 606
    const/4 v0, 0x0

    .line 615
    :cond_0
    :goto_0
    return v0

    .line 609
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 610
    .local v0, "connected":Z
    sget-boolean v2, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 611
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

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isMmsNetworkAvailable()Z
    .locals 3

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/android/mms/transaction/NetworkManager;->checkMmsNetworkAvailability()Z

    move-result v0

    .line 734
    .local v0, "isAvailable":Z
    if-nez v0, :cond_0

    .line 735
    const-string v1, "NetworkManager"

    const-string v2, "MMS-STATUS - MMS Network is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-virtual {p0}, Lcom/android/mms/transaction/NetworkManager;->isMmsApnConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    const-string v1, "NetworkManager"

    const-string v2, "MMS-STATUS - MMS Network is not available but APN is connected, suppose network available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v0, 0x1

    .line 745
    :cond_0
    return v0
.end method

.method public isSIMCardReady()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 754
    invoke-static {}, Lcom/android/mms/MmsConfig;->isGSM()Z

    move-result v2

    if-nez v2, :cond_1

    .line 757
    sget-boolean v2, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 758
    const-string v2, "NetworkManager"

    const-string v3, "isSIMCardReady, called but not in GSM mode!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_0
    :goto_0
    return v1

    .line 765
    :cond_1
    sget-object v2, Lcom/android/mms/transaction/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 766
    .local v0, "state":I
    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 770
    sget-boolean v1, Lcom/android/mms/transaction/NetworkManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 771
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

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mustUseHIPRI()Z
    .locals 1

    .prologue
    .line 972
    invoke-static {}, Lcom/android/mms/MmsConfig;->isMMSHIPRIEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    const/4 v0, 0x1

    .line 976
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
    .line 833
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 840
    sget-object v0, Lcom/android/mms/transaction/NetworkManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
