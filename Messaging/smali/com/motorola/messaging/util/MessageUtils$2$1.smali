.class Lcom/motorola/messaging/util/MessageUtils$2$1;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/util/MessageUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/util/MessageUtils$2;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/util/MessageUtils$2;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/motorola/messaging/util/MessageUtils$2$1;->this$0:Lcom/motorola/messaging/util/MessageUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 667
    iget-object v0, p0, Lcom/motorola/messaging/util/MessageUtils$2$1;->this$0:Lcom/motorola/messaging/util/MessageUtils$2;

    iget-object v0, v0, Lcom/motorola/messaging/util/MessageUtils$2;->val$context:Landroid/app/Activity;

    const v1, 0x7f0b0177

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 670
    return-void
.end method
