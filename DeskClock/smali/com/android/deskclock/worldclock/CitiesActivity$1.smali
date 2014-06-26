.class Lcom/android/deskclock/worldclock/CitiesActivity$1;
.super Ljava/lang/Object;
.source "CitiesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/worldclock/CitiesActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/worldclock/CitiesActivity;


# direct methods
.method constructor <init>(Lcom/android/deskclock/worldclock/CitiesActivity;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$1;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitiesActivity$1;->this$0:Lcom/android/deskclock/worldclock/CitiesActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/deskclock/worldclock/CitiesActivity;->mSearchMode:Z
    invoke-static {v0, v1}, Lcom/android/deskclock/worldclock/CitiesActivity;->access$1602(Lcom/android/deskclock/worldclock/CitiesActivity;Z)Z

    .line 568
    return-void
.end method
