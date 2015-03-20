.class public Lcom/motorola/messaging/frameworkadapter/motorola/SMSNumberHandler;
.super Ljava/lang/Object;
.source "SMSNumberHandler.java"


# static fields
.field private static mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static mIsNANPShortCode:Ljava/lang/reflect/Method;

.field private static mReflectionInitialized:Z

.field private static mSmsNumberHandlerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized initReflected()V
    .locals 6

    .prologue
    .line 22
    const-class v1, Lcom/motorola/messaging/frameworkadapter/motorola/SMSNumberHandler;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/motorola/messaging/frameworkadapter/motorola/SMSNumberHandler;->mReflectionInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 39
    :goto_0
    monitor-exit v1

    return-void

    .line 27
    :cond_0
    :try_start_1
    const-string v0, "com.motorola.android.internal.telephony.SMSNumberHandler"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/SMSNumberHandler;->mSmsNumberHandlerClass:Ljava/lang/Class;

    .line 28
    sget-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/SMSNumberHandler;->mSmsNumberHandlerClass:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/SMSNumberHandler;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 29
    sget-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/SMSNumberHandler;->mSmsNumberHandlerClass:Ljava/lang/Class;

    const-string v2, "isNANPShortCode"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/SMSNumberHandler;->mIsNANPShortCode:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/motorola/messaging/frameworkadapter/motorola/SMSNumberHandler;->mReflectionInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 30
    :catch_0
    move-exception v0

    .line 37
    const/4 v0, 0x1

    :try_start_3
    sput-boolean v0, Lcom/motorola/messaging/frameworkadapter/motorola/SMSNumberHandler;->mReflectionInitialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 32
    :catch_1
    move-exception v0

    .line 33
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 37
    const/4 v0, 0x1

    :try_start_5
    sput-boolean v0, Lcom/motorola/messaging/frameworkadapter/motorola/SMSNumberHandler;->mReflectionInitialized:Z

    goto :goto_0

    .line 34
    :catch_2
    move-exception v0

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/messaging/frameworkadapter/motorola/SMSNumberHandler;->mReflectionInitialized:Z

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/motorola/messaging/frameworkadapter/motorola/SMSNumberHandler;->mReflectionInitialized:Z

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static isNANPShortCode(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-static {}, Lcom/motorola/messaging/frameworkadapter/motorola/SMSNumberHandler;->initReflected()V

    .line 45
    :try_start_0
    sget-object v2, Lcom/motorola/messaging/frameworkadapter/motorola/SMSNumberHandler;->mConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_0

    .line 46
    sget-object v2, Lcom/motorola/messaging/frameworkadapter/motorola/SMSNumberHandler;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    .local v1, "wrapped":Ljava/lang/Object;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/motorola/messaging/frameworkadapter/motorola/SMSNumberHandler;->mIsNANPShortCode:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 49
    sget-object v2, Lcom/motorola/messaging/frameworkadapter/motorola/SMSNumberHandler;->mIsNANPShortCode:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v2

    .line 64
    .end local v1    # "wrapped":Ljava/lang/Object;
    :goto_0
    return v2

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const-string v2, "SMSNumberHandler"

    const-string v4, "API-FALLBACK - isNANPShortCode"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 64
    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 56
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 58
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 60
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v2

    goto :goto_1
.end method
