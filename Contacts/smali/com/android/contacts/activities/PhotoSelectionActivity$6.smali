.class Lcom/android/contacts/activities/PhotoSelectionActivity$6;
.super Ljava/lang/Object;
.source "PhotoSelectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PhotoSelectionActivity;->attachPhotoHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PhotoSelectionActivity;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$6;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$6;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    # invokes: Lcom/android/contacts/activities/PhotoSelectionActivity;->animatePhotoOpen()V
    invoke-static {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$1100(Lcom/android/contacts/activities/PhotoSelectionActivity;)V

    .line 509
    return-void
.end method
