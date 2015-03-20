.class Lcom/motorola/messaging/view/MinDurationProgressDialog$1;
.super Ljava/lang/Object;
.source "MinDurationProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/view/MinDurationProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/view/MinDurationProgressDialog;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/MinDurationProgressDialog;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/motorola/messaging/view/MinDurationProgressDialog$1;->this$0:Lcom/motorola/messaging/view/MinDurationProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/view/MinDurationProgressDialog$1;->this$0:Lcom/motorola/messaging/view/MinDurationProgressDialog;

    # invokes: Landroid/app/Dialog;->dismiss()V
    invoke-static {v1}, Lcom/motorola/messaging/view/MinDurationProgressDialog;->access$001(Lcom/motorola/messaging/view/MinDurationProgressDialog;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "MinDurationProgressDialog"

    const-string v2, "Not able to dismiss progress dialog."

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
