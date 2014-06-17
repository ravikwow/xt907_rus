.class public Lcom/android/mms/checkin/CheckinEventWrapper;
.super Ljava/lang/Object;
.source "CheckinEventWrapper.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sMethodConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static sMethodPublish:Ljava/lang/reflect/Method;

.field private static sMethodSetValue:Ljava/lang/reflect/Method;

.field private static sSucessfullyInit:Z


# instance fields
.field private mCheckinEvent:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 23
    const-string v0, "CheckinEventWrapper"

    sput-object v0, Lcom/android/mms/checkin/CheckinEventWrapper;->TAG:Ljava/lang/String;

    .line 47
    :try_start_0
    const-string v0, "com.motorola.android.provider.CheckinEvent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 49
    const-string v1, "com.motorola.data.event.api.Event"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 51
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lcom/android/mms/checkin/CheckinEventWrapper;->sMethodConstructor:Ljava/lang/reflect/Constructor;

    .line 54
    const-string v2, "setValue"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/mms/checkin/CheckinEventWrapper;->sMethodSetValue:Ljava/lang/reflect/Method;

    .line 56
    const-string v1, "publish"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/mms/checkin/CheckinEventWrapper;->sMethodPublish:Ljava/lang/reflect/Method;

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/checkin/CheckinEventWrapper;->sSucessfullyInit:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 63
    sget-object v0, Lcom/android/mms/checkin/CheckinEventWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Reflection failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sput-object v7, Lcom/android/mms/checkin/CheckinEventWrapper;->sMethodSetValue:Ljava/lang/reflect/Method;

    .line 65
    sput-object v7, Lcom/android/mms/checkin/CheckinEventWrapper;->sMethodPublish:Ljava/lang/reflect/Method;

    .line 66
    sput-object v7, Lcom/android/mms/checkin/CheckinEventWrapper;->sMethodConstructor:Ljava/lang/reflect/Constructor;

    .line 67
    sput-boolean v6, Lcom/android/mms/checkin/CheckinEventWrapper;->sSucessfullyInit:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/mms/checkin/CheckinEventWrapper;->sSucessfullyInit:Z

    return v0
.end method


# virtual methods
.method public publish(Landroid/content/ContentResolver;)V
    .locals 5
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 131
    sget-boolean v1, Lcom/android/mms/checkin/CheckinEventWrapper;->sSucessfullyInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/checkin/CheckinEventWrapper;->mCheckinEvent:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 133
    :try_start_0
    sget-object v1, Lcom/android/mms/checkin/CheckinEventWrapper;->sMethodPublish:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/mms/checkin/CheckinEventWrapper;->mCheckinEvent:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 137
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/mms/checkin/CheckinEventWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Reflection failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "segmentName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    sget-boolean v3, Lcom/android/mms/checkin/CheckinEventWrapper;->sSucessfullyInit:Z

    if-eqz v3, :cond_0

    .line 92
    :try_start_0
    sget-object v3, Lcom/android/mms/checkin/CheckinEventWrapper;->sMethodConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/checkin/CheckinEventWrapper;->mCheckinEvent:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return v1

    .line 94
    :catch_0
    move-exception v0

    .line 97
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/mms/checkin/CheckinEventWrapper;->TAG:Ljava/lang/String;

    const-string v3, "Reflection failed"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    move v1, v2

    .line 100
    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-boolean v1, Lcom/android/mms/checkin/CheckinEventWrapper;->sSucessfullyInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/checkin/CheckinEventWrapper;->mCheckinEvent:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    sget-object v1, Lcom/android/mms/checkin/CheckinEventWrapper;->sMethodSetValue:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/mms/checkin/CheckinEventWrapper;->mCheckinEvent:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 119
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/mms/checkin/CheckinEventWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Reflection failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
