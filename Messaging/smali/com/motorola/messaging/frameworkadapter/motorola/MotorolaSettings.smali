.class public Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;
.super Ljava/lang/Object;
.source "MotorolaSettings.java"


# static fields
.field public static ENABLE_MMS_WHEN_DATA_DISABLED:Ljava/lang/String;

.field private static mGetInt:Ljava/lang/reflect/Method;

.field private static mMotorolaSettingsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mReflectionInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->initEnableMMSWhenDataDisabled()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->ENABLE_MMS_WHEN_DATA_DISABLED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 63
    invoke-static {}, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->initReflected()V

    .line 65
    :try_start_0
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->mGetInt:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 66
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->mGetInt:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result p2

    .line 78
    .end local p2    # "def":I
    :goto_0
    return p2

    .line 68
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const-string v1, "MotorolaSettings"

    const-string v2, "API-FALLBACK - getInt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 72
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 74
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private static initEnableMMSWhenDataDisabled()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    :try_start_0
    invoke-static {}, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->initReflected()V

    .line 45
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->mMotorolaSettingsClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 46
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->mMotorolaSettingsClass:Ljava/lang/Class;

    const-string v2, "ENABLE_MMS_WHEN_DATA_DISABLED"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    .line 59
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-object v1

    .line 48
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_0
    move-exception v0

    .line 49
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    :cond_0
    :goto_1
    const-string v1, "MotorolaSettings"

    const-string v2, "API-FALLBACK - initEnableMMSWhenDataDisabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v1, ""

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 52
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 54
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static declared-synchronized initReflected()V
    .locals 6

    .prologue
    .line 22
    const-class v1, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->mReflectionInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 40
    :goto_0
    monitor-exit v1

    return-void

    .line 27
    :cond_0
    :try_start_1
    const-string v0, "com.motorola.android.provider.MotorolaSettings"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->mMotorolaSettingsClass:Ljava/lang/Class;

    .line 28
    sget-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->mMotorolaSettingsClass:Ljava/lang/Class;

    const-string v2, "getInt"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ContentResolver;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->mGetInt:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->mReflectionInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 29
    :catch_0
    move-exception v0

    .line 38
    const/4 v0, 0x1

    :try_start_3
    sput-boolean v0, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->mReflectionInitialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 31
    :catch_1
    move-exception v0

    .line 32
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 38
    const/4 v0, 0x1

    :try_start_5
    sput-boolean v0, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->mReflectionInitialized:Z

    goto :goto_0

    .line 33
    :catch_2
    move-exception v0

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->mReflectionInitialized:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 35
    :catch_3
    move-exception v0

    .line 36
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 38
    const/4 v0, 0x1

    :try_start_7
    sput-boolean v0, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->mReflectionInitialized:Z

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/motorola/messaging/frameworkadapter/motorola/MotorolaSettings;->mReflectionInitialized:Z

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method
