.class Lcom/android/packageinstaller/PackageInstallerActivity$1;
.super Ljava/lang/Object;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/PackageInstallerActivity;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 134
    const-string v0, "PackageInstaller"

    const-string v1, "Canceling installation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 136
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 137
    return-void
.end method
