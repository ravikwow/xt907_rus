.class final Lcom/motorola/messaging/util/MessagingNotification$1;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/util/MessagingNotification;->updateAllNotifications(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/motorola/messaging/util/MessagingNotification$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/motorola/messaging/util/MessagingNotification$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/messaging/util/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 285
    return-void
.end method
