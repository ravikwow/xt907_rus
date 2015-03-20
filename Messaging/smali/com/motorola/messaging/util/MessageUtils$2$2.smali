.class Lcom/motorola/messaging/util/MessageUtils$2$2;
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
    .line 673
    iput-object p1, p0, Lcom/motorola/messaging/util/MessageUtils$2$2;->this$0:Lcom/motorola/messaging/util/MessageUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 675
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/messaging/util/MessageUtils$2$2;->this$0:Lcom/motorola/messaging/util/MessageUtils$2;

    iget-object v1, v1, Lcom/motorola/messaging/util/MessageUtils$2;->val$context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 676
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0179

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 677
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 678
    const v1, 0x7f0b0178

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 679
    const v1, 0x7f0b007a

    new-instance v2, Lcom/motorola/messaging/util/MessageUtils$2$2$1;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/util/MessageUtils$2$2$1;-><init>(Lcom/motorola/messaging/util/MessageUtils$2$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 684
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 685
    return-void
.end method
