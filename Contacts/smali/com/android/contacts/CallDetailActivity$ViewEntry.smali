.class final Lcom/android/contacts/CallDetailActivity$ViewEntry;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public label:Ljava/lang/CharSequence;

.field public final primaryDescription:Ljava/lang/String;

.field public final primaryIntent:Landroid/content/Intent;

.field public secondaryDescription:Ljava/lang/String;

.field public secondaryIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 791
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIcon:I

    .line 793
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 795
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 798
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    .line 799
    iput-object p2, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    .line 800
    iput-object p3, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->primaryDescription:Ljava/lang/String;

    .line 801
    return-void
.end method


# virtual methods
.method public setSecondaryAction(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 804
    iput p1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIcon:I

    .line 805
    iput-object p2, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 806
    iput-object p3, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 807
    return-void
.end method
