.class public Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# static fields
.field private static mCalculateLengthMethod:Ljava/lang/reflect/Method;

.field private static mGetCallbackNumberAddressMethod:Ljava/lang/reflect/Method;

.field private static mGetPriorityMethod:Ljava/lang/reflect/Method;

.field private static mReflectionInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)[I
    .locals 6
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "ifSupportNationalTable"    # Z
    .param p3, "ifSupportLockingShiftTable"    # Z
    .param p4, "language"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {}, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->initReflected()V

    .line 48
    :try_start_0
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->mCalculateLengthMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 49
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->mCalculateLengthMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p4, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 63
    :goto_0
    return-object v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const-string v1, "SmsMessage"

    const-string v2, "API-FALLBACK - calculateLength"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v1

    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 56
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 58
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 1
    .param p0, "pdu"    # [B
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static getCallbackNumberAddress(Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 3
    .param p0, "wrapped"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 67
    invoke-static {}, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->initReflected()V

    .line 69
    :try_start_0
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->mGetCallbackNumberAddressMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 70
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->mGetCallbackNumberAddressMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 82
    :goto_0
    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const-string v1, "SmsMessage"

    const-string v2, "API-FALLBACK - getCallbackNumberAddress"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v1, ""

    goto :goto_0

    .line 74
    :catch_1
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 76
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 78
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static getPriority(Landroid/telephony/SmsMessage;)I
    .locals 4
    .param p0, "wrapped"    # Landroid/telephony/SmsMessage;

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-static {}, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->initReflected()V

    .line 88
    :try_start_0
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->mGetPriorityMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 89
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->mGetPriorityMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    .line 101
    :goto_0
    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const-string v1, "SmsMessage"

    const-string v3, "API-FALLBACK - getPriority"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 101
    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 95
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 97
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static declared-synchronized initReflected()V
    .locals 6

    .prologue
    .line 20
    const-class v1, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->mReflectionInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 38
    :goto_0
    monitor-exit v1

    return-void

    .line 25
    :cond_0
    :try_start_1
    const-string v0, "android.telephony.SmsMessage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 26
    const-string v2, "calculateLength"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->mCalculateLengthMethod:Ljava/lang/reflect/Method;

    .line 28
    const-string v2, "getCallbackNumberAddress"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->mGetCallbackNumberAddressMethod:Ljava/lang/reflect/Method;

    .line 29
    const-string v2, "getPriority"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->mGetPriorityMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->mReflectionInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    :try_start_3
    invoke-static {v0}, Lcom/motorola/messaging/frameworkadapter/Reflection;->handleInitializationException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->mReflectionInitialized:Z

    goto :goto_0

    .line 32
    :catch_1
    move-exception v0

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->mReflectionInitialized:Z

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/motorola/messaging/frameworkadapter/telephony/SmsMessage;->mReflectionInitialized:Z

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
