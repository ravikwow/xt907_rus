.class Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;
.super Ljava/lang/Object;
.source "TimeConsumingPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TimeConsumingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DismissAndFinishOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TimeConsumingPreferenceActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/TimeConsumingPreferenceActivity;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;->this$0:Lcom/android/phone/TimeConsumingPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/TimeConsumingPreferenceActivity;Lcom/android/phone/TimeConsumingPreferenceActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/TimeConsumingPreferenceActivity;
    .param p2, "x1"    # Lcom/android/phone/TimeConsumingPreferenceActivity$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;-><init>(Lcom/android/phone/TimeConsumingPreferenceActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 39
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 40
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;->this$0:Lcom/android/phone/TimeConsumingPreferenceActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 41
    return-void
.end method
