.class Lcom/android/contacts/list/DirectoryListLoader$1;
.super Landroid/database/ContentObserver;
.source "DirectoryListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DirectoryListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DirectoryListLoader;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DirectoryListLoader;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/contacts/list/DirectoryListLoader$1;->this$0:Lcom/android/contacts/list/DirectoryListLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/contacts/list/DirectoryListLoader$1;->this$0:Lcom/android/contacts/list/DirectoryListLoader;

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    .line 76
    return-void
.end method
