.class public final Lcom/android/contacts/util/CallerInfoCacheUtils;
.super Ljava/lang/Object;
.source "CallerInfoCacheUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.UPDATE_CALLER_INFO_CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    return-void
.end method
