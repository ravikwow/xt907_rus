.class public Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
.super Ljava/lang/Object;
.source "CheckinLogger.java"


# static fields
.field private static mCheckinLogWrapperClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static mPublishMethod:Ljava/lang/reflect/Method;

.field private static mResolver:Landroid/content/ContentResolver;

.field private static mSetValueBooleanMethod:Ljava/lang/reflect/Method;

.field private static mSetValueIntMethod:Ljava/lang/reflect/Method;

.field private static mSetValueLongMethod:Ljava/lang/reflect/Method;

.field private static mSetValueStringMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mWrapped:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->initReflected()V

    .line 118
    :try_start_0
    sget-object v2, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_0

    .line 119
    const/4 v1, 0x0

    .line 121
    .local v1, "logLevel":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 135
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal level argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 141
    .end local v1    # "logLevel":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    const-string v2, "CheckinLogger"

    const-string v3, "API-FALLBACK - logEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_1
    return-void

    .line 123
    .restart local v1    # "logLevel":Ljava/lang/String;
    :pswitch_0
    :try_start_1
    const-string v1, "MOT_MSG_STATS_L1"

    .line 138
    :goto_2
    sget-object v2, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    const-string v5, "0.1"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mWrapped:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 143
    .end local v1    # "logLevel":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/lang/InstantiationException;
    .restart local v1    # "logLevel":Ljava/lang/String;
    :pswitch_1
    :try_start_2
    const-string v1, "MOT_MSG_STATS_L2"

    .line 127
    goto :goto_2

    .line 129
    :pswitch_2
    const-string v1, "MOT_MSG_STATS_L3"

    .line 130
    goto :goto_2

    .line 132
    :pswitch_3
    const-string v1, "MOT_MSG_STATS_L4"
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    .line 133
    goto :goto_2

    .line 145
    .end local v1    # "logLevel":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mResolver:Landroid/content/ContentResolver;

    .line 60
    return-void
.end method

.method public static declared-synchronized initReflected()V
    .locals 6

    .prologue
    .line 37
    const-class v1, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mCheckinLogWrapperClass:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    monitor-exit v1

    return-void

    .line 42
    :cond_0
    :try_start_1
    const-string v0, "com.motorola.checkinwrapper.CheckinEventWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mCheckinLogWrapperClass:Ljava/lang/Class;

    .line 43
    sget-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mCheckinLogWrapperClass:Ljava/lang/Class;

    const/4 v2, 0x3

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

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 44
    sget-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mCheckinLogWrapperClass:Ljava/lang/Class;

    const-string v2, "setValue"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mSetValueStringMethod:Ljava/lang/reflect/Method;

    .line 45
    sget-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mCheckinLogWrapperClass:Ljava/lang/Class;

    const-string v2, "setValue"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mSetValueIntMethod:Ljava/lang/reflect/Method;

    .line 46
    sget-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mCheckinLogWrapperClass:Ljava/lang/Class;

    const-string v2, "setValue"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mSetValueLongMethod:Ljava/lang/reflect/Method;

    .line 47
    sget-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mCheckinLogWrapperClass:Ljava/lang/Class;

    const-string v2, "setValue"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mSetValueBooleanMethod:Ljava/lang/reflect/Method;

    .line 48
    sget-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mCheckinLogWrapperClass:Ljava/lang/Class;

    const-string v2, "publish"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mPublishMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 49
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 51
    :catch_1
    move-exception v0

    .line 52
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 53
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method public addField(Ljava/lang/String;I)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 173
    invoke-static {}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->initReflected()V

    .line 175
    :try_start_0
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mSetValueIntMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 176
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mSetValueIntMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mWrapped:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 189
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 188
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const-string v1, "CheckinLogger"

    const-string v2, "API-FALLBACK - logEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :catch_1
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 183
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 185
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public addField(Ljava/lang/String;J)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 192
    invoke-static {}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->initReflected()V

    .line 194
    :try_start_0
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mSetValueLongMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 195
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mSetValueLongMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mWrapped:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 208
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const-string v1, "CheckinLogger"

    const-string v2, "API-FALLBACK - logEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :catch_1
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 202
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 204
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-static {}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->initReflected()V

    .line 156
    :try_start_0
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mSetValueStringMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 157
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mSetValueStringMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mWrapped:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 170
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 169
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const-string v1, "CheckinLogger"

    const-string v2, "API-FALLBACK - logEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :catch_1
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 164
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 166
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public addField(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 211
    invoke-static {}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->initReflected()V

    .line 213
    :try_start_0
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mSetValueBooleanMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 214
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mSetValueBooleanMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mWrapped:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 227
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 226
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const-string v1, "CheckinLogger"

    const-string v2, "API-FALLBACK - logEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 221
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 223
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public log()V
    .locals 6

    .prologue
    .line 230
    invoke-static {}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->initReflected()V

    .line 231
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    .line 233
    :try_start_0
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mPublishMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 234
    sget-object v1, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mPublishMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mWrapped:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->mResolver:Landroid/content/ContentResolver;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 246
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 245
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const-string v1, "CheckinLogger"

    const-string v2, "API-FALLBACK - log"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
