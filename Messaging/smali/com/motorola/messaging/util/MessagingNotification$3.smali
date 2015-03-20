.class final Lcom/motorola/messaging/util/MessagingNotification$3;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/util/MessagingNotification;->updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$message:Ljava/lang/CharSequence;

.field final synthetic val$timeMillis:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;J)V
    .locals 0

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/motorola/messaging/util/MessagingNotification$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/messaging/util/MessagingNotification$3;->val$message:Ljava/lang/CharSequence;

    iput-wide p3, p0, Lcom/motorola/messaging/util/MessagingNotification$3;->val$timeMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/motorola/messaging/util/MessagingNotification$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/util/MessagingNotification$3;->val$message:Ljava/lang/CharSequence;

    iget-wide v2, p0, Lcom/motorola/messaging/util/MessagingNotification$3;->val$timeMillis:J

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1056
    return-void
.end method
