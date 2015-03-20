.class public Lcom/motorola/contracts/email/Intent;
.super Ljava/lang/Object;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contracts/email/Intent$AutoEmailAccount;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ID_PARAM:Ljava/lang/String; = "ACCOUNT_ID"

.field public static final ACCOUNT_UUID_PARAM:Ljava/lang/String; = "ACCOUNT_UUID"

.field public static final ACTIVITY_INTENT_HOST:Ljava/lang/String; = "ui.email.android.com"

.field public static final ACTIVITY_INTENT_SCHEME:Ljava/lang/String; = "content"

.field public static final EMAIL_APP_LAUNCHER_CLASS_NAME:Ljava/lang/String; = "com.android.email.activity.Welcome"

.field public static final EMAIL_APP_PKG_NAME:Ljava/lang/String; = "com.motorola.motoemail"

.field public static final EXTRA_CONVERSATION_ID:Ljava/lang/String; = "CONVERSATION_ID"

.field public static final MAILBOX_ID_PARAM:Ljava/lang/String; = "MAILBOX_ID"

.field public static final MAX_DISPLAY_COUNT:I = 0x3e7

.field public static final MESSAGE_ID_PARAM:Ljava/lang/String; = "MESSAGE_ID"

.field public static final VIEW_MAILBOX_INTENT_URL_PATH:Ljava/lang/String; = "/view/mailbox"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method
