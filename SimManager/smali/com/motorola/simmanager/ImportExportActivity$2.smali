.class Lcom/motorola/simmanager/ImportExportActivity$2;
.super Ljava/lang/Object;
.source "ImportExportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/simmanager/ImportExportActivity;->changeUI(I)V
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
    .line 321
    iput-object p1, p0, Lcom/motorola/simmanager/ImportExportActivity$2;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/motorola/simmanager/ImportExportActivity$2;->this$0:Lcom/motorola/simmanager/ImportExportActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 324
    return-void
.end method
