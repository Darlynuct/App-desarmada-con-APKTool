.class Lcom/emi/samradar/FirstFragment$1;
.super Ljava/lang/Object;
.source "FirstFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emi/samradar/FirstFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/emi/samradar/FirstFragment;


# direct methods
.method constructor <init>(Lcom/emi/samradar/FirstFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/emi/samradar/FirstFragment;

    .line 33
    iput-object p1, p0, Lcom/emi/samradar/FirstFragment$1;->this$0:Lcom/emi/samradar/FirstFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/emi/samradar/FirstFragment$1;->this$0:Lcom/emi/samradar/FirstFragment;

    invoke-static {v0}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    .line 37
    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 38
    return-void
.end method
