.class Lcom/android/certinstaller/CertInstaller$4;
.super Ljava/lang/Object;
.source "CertInstaller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/certinstaller/CertInstaller;->createPkcs12PasswordDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/certinstaller/CertInstaller;


# direct methods
.method constructor <init>(Lcom/android/certinstaller/CertInstaller;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/certinstaller/CertInstaller$4;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller$4;->this$0:Lcom/android/certinstaller/CertInstaller;

    const v1, 0x7f060014

    # invokes: Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V
    invoke-static {v0, v1}, Lcom/android/certinstaller/CertInstaller;->access$800(Lcom/android/certinstaller/CertInstaller;I)V

    .line 472
    return-void
.end method
