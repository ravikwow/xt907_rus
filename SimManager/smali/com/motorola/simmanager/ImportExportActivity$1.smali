.class Lcom/motorola/simmanager/ImportExportActivity$1;
.super Ljava/lang/Object;
.source "ImportExportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/ImportExportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/simmanager/ImportExportActivity;


# direct methods
.method constructor <init>(Lcom/motorola/simmanager/ImportExportActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/motorola/simmanager/ImportExportActivity$1;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$1;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 112
    return-void
.end method
