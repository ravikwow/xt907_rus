.class Lcom/motorola/blur/privacy/LegalReaderActivity$6;
.super Ljava/lang/Object;
.source "LegalReaderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/privacy/LegalReaderActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/privacy/LegalReaderActivity;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$6;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 516
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$6;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 517
    return-void
.end method
